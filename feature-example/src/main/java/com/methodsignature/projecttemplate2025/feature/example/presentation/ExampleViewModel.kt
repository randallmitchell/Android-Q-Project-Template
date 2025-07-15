package com.methodsignature.projecttemplate2025.feature.example.presentation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.methodsignature.projecttemplate2025.feature.example.domain.usecase.GetTodosUseCase
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class TodoViewModel @Inject constructor(
    private val getTodosUseCase: GetTodosUseCase
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(TodoUiState())
    val uiState: StateFlow<TodoUiState> = _uiState.asStateFlow()
    
    fun handleIntent(intent: TodoIntent) {
        when (intent) {
            is TodoIntent.LoadTodos -> loadTodos()
            is TodoIntent.ToggleTodo -> toggleTodo(intent.todoId)
            is TodoIntent.SelectTodo -> selectTodo(intent.todo)
        }
    }
    
    private fun loadTodos() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            
            try {
                val result = getTodosUseCase()
                result.fold(
                    onSuccess = { todos ->
                        _uiState.update { 
                            it.copy(
                                isLoading = false,
                                todos = todos,
                                error = null
                            )
                        }
                    },
                    onFailure = { error ->
                        _uiState.update { 
                            it.copy(
                                isLoading = false,
                                error = error.message ?: "Failed to load todos"
                            )
                        }
                    }
                )
            } catch (e: Exception) {
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "Unknown error occurred"
                    )
                }
            }
        }
    }
    
    private fun toggleTodo(todoId: String) {
        _uiState.update { state ->
            state.copy(
                todos = state.todos.map { todo ->
                    if (todo.id == todoId) {
                        todo.copy(isCompleted = !todo.isCompleted)
                    } else {
                        todo
                    }
                }
            )
        }
    }
    
    private fun selectTodo(todo: TodoItem) {
        _uiState.update { 
            it.copy(selectedTodo = todo)
        }
    }
}

data class TodoUiState(
    val isLoading: Boolean = false,
    val todos: List<TodoItem> = emptyList(),
    val selectedTodo: TodoItem? = null,
    val error: String? = null
)

sealed class TodoIntent {
    object LoadTodos : TodoIntent()
    data class ToggleTodo(val todoId: String) : TodoIntent()
    data class SelectTodo(val todo: TodoItem) : TodoIntent()
}

data class TodoItem(
    val id: String,
    val title: String,
    val description: String,
    val isCompleted: Boolean = false
)
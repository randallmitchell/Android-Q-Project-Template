package com.methodsignature.projecttemplate2025.feature.example.presentation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.methodsignature.projecttemplate2025.feature.example.domain.usecase.GetExampleDataUseCase
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ExampleViewModel @Inject constructor(
    private val getExampleDataUseCase: GetExampleDataUseCase
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(ExampleUiState())
    val uiState: StateFlow<ExampleUiState> = _uiState.asStateFlow()
    
    fun handleIntent(intent: ExampleIntent) {
        when (intent) {
            is ExampleIntent.LoadData -> loadData()
            is ExampleIntent.SelectItem -> selectItem(intent.item)
            is ExampleIntent.RefreshData -> refreshData()
        }
    }
    
    private fun loadData() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            
            try {
                val result = getExampleDataUseCase()
                result.fold(
                    onSuccess = { items ->
                        _uiState.update { 
                            it.copy(
                                isLoading = false,
                                items = items,
                                error = null
                            )
                        }
                    },
                    onFailure = { error ->
                        _uiState.update { 
                            it.copy(
                                isLoading = false,
                                error = error.message ?: "Unknown error occurred"
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
    
    private fun selectItem(item: ExampleItem) {
        _uiState.update { 
            it.copy(selectedItem = item)
        }
        // Handle item selection logic here
    }
    
    private fun refreshData() {
        loadData()
    }
}

data class ExampleUiState(
    val isLoading: Boolean = false,
    val items: List<ExampleItem> = emptyList(),
    val selectedItem: ExampleItem? = null,
    val error: String? = null
)

sealed class ExampleIntent {
    object LoadData : ExampleIntent()
    object RefreshData : ExampleIntent()
    data class SelectItem(val item: ExampleItem) : ExampleIntent()
}

data class ExampleItem(
    val id: String,
    val title: String,
    val description: String
)
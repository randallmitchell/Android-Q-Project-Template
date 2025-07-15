package com.methodsignature.projecttemplate2025.feature.example.domain.usecase

import com.methodsignature.projecttemplate2025.feature.example.presentation.TodoItem
import kotlinx.coroutines.delay
import javax.inject.Inject

class GetTodosUseCase @Inject constructor() {
    
    suspend operator fun invoke(): Result<List<TodoItem>> {
        return try {
            // Simulate network delay
            delay(800)
            
            // Mock todo data - replace with actual repository call
            val mockTodos = listOf(
                TodoItem(
                    id = "1",
                    title = "Review project architecture",
                    description = "Ensure Clean Architecture principles are properly implemented",
                    isCompleted = false
                ),
                TodoItem(
                    id = "2", 
                    title = "Implement Material Design components",
                    description = "Add custom UI components following Material Design guidelines",
                    isCompleted = true
                ),
                TodoItem(
                    id = "3",
                    title = "Write unit tests", 
                    description = "Add comprehensive test coverage for ViewModels and Use Cases",
                    isCompleted = false
                ),
                TodoItem(
                    id = "4",
                    title = "Setup CI/CD pipeline",
                    description = "Configure automated testing and deployment",
                    isCompleted = false
                )
            )
            
            Result.success(mockTodos)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
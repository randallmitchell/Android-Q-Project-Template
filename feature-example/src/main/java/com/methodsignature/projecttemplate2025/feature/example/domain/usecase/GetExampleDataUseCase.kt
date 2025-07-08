package com.methodsignature.projecttemplate2025.feature.example.domain.usecase

import com.methodsignature.projecttemplate2025.feature.example.presentation.ExampleItem
import kotlinx.coroutines.delay
import javax.inject.Inject

class GetExampleDataUseCase @Inject constructor() {
    
    suspend operator fun invoke(): Result<List<ExampleItem>> {
        return try {
            // Simulate network delay
            delay(1000)
            
            // Mock data - replace with actual repository call
            val mockData = listOf(
                ExampleItem(
                    id = "1",
                    title = "Example Item 1",
                    description = "This is a sample item demonstrating the template architecture"
                ),
                ExampleItem(
                    id = "2", 
                    title = "Example Item 2",
                    description = "Another sample item showing MVVM pattern implementation"
                ),
                ExampleItem(
                    id = "3",
                    title = "Example Item 3", 
                    description = "Third item demonstrating Clean Architecture principles"
                )
            )
            
            Result.success(mockData)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
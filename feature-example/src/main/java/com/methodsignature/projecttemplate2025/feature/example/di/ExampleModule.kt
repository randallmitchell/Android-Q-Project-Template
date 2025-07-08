package com.methodsignature.projecttemplate2025.feature.example.di

import com.methodsignature.projecttemplate2025.feature.example.domain.usecase.GetExampleDataUseCase
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.components.ViewModelComponent
import dagger.hilt.android.scopes.ViewModelScoped

@Module
@InstallIn(ViewModelComponent::class)
object ExampleModule {
    
    @Provides
    @ViewModelScoped
    fun provideGetExampleDataUseCase(): GetExampleDataUseCase {
        return GetExampleDataUseCase()
    }
}
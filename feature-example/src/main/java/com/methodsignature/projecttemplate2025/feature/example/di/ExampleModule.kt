package com.methodsignature.projecttemplate2025.feature.example.di

import com.methodsignature.projecttemplate2025.feature.example.domain.usecase.GetTodosUseCase
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.components.ViewModelComponent
import dagger.hilt.android.scopes.ViewModelScoped

@Module
@InstallIn(ViewModelComponent::class)
object TodoModule {
    
    @Provides
    @ViewModelScoped
    fun provideGetTodosUseCase(): GetTodosUseCase {
        return GetTodosUseCase()
    }
}
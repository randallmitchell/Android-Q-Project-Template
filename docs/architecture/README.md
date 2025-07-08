# Architecture Overview

## Clean Architecture Implementation

This template follows Clean Architecture principles with three main layers:

### 1. Presentation Layer
- **ViewModels**: Handle UI state and user interactions
- **Compose UI**: Declarative UI components
- **Navigation**: Screen navigation logic

```kotlin
@HiltViewModel
class FeatureViewModel @Inject constructor(
    private val useCase: FeatureUseCase
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(FeatureUiState())
    val uiState: StateFlow<FeatureUiState> = _uiState.asStateFlow()
    
    fun handleAction(action: FeatureAction) {
        viewModelScope.launch {
            when (action) {
                is FeatureAction.LoadData -> loadData()
            }
        }
    }
}
```

### 2. Domain Layer
- **Use Cases**: Business logic and orchestration
- **Service Interfaces**: Data access contracts
- **Domain Models**: Core business entities

```kotlin
class GetFeatureDataUseCase @Inject constructor(
    private val remoteService: FeatureRemoteService,
    private val localService: FeatureLocalService
) {
    suspend operator fun invoke(): Result<FeatureData> {
        return try {
            val localData = localService.getData()
            if (localData.isNotEmpty()) {
                Result.success(localData)
            } else {
                val remoteData = remoteService.fetchData()
                localService.saveData(remoteData)
                Result.success(remoteData)
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
```

### 3. Data Layer
- **Service Implementations**: Handle data access and return domain models

```kotlin
@Singleton
class FeatureRemoteServiceImpl @Inject constructor(
    private val api: FeatureApi
) : FeatureRemoteService {
    
    override suspend fun fetchData(): List<FeatureData> {
        val response = api.getFeatures()
        return response.items.map { dto ->
            FeatureData(
                id = dto.id,
                title = dto.name,
                description = dto.desc
            )
        }
    }
}
```

## Module Structure

```
app/                    # Main application module
├── library-ui/        # Shared UI components
├── library-data/      # Service implementations
├── library-domain/    # Use cases and domain models
├── feature-auth/      # Authentication feature
├── feature-dashboard/ # Dashboard feature
└── shared-resources/  # Shared resources
```

## Dependency Flow
- Presentation → Domain ← Data
- Use Cases orchestrate Services
- Services handle their own data access internally
- No circular dependencies between layers
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
- **Use Cases**: Business logic implementation
- **Repository Interfaces**: Data access contracts
- **Domain Models**: Core business entities

```kotlin
class GetFeatureDataUseCase @Inject constructor(
    private val repository: FeatureRepository
) {
    suspend operator fun invoke(): Result<FeatureData> {
        return repository.getFeatureData()
    }
}
```

### 3. Data Layer
- **Repository Implementations**: Data access logic
- **Data Sources**: Remote and local data sources
- **DTOs**: Data transfer objects

```kotlin
@Singleton
class FeatureRepositoryImpl @Inject constructor(
    private val remoteDataSource: FeatureRemoteDataSource,
    private val localDataSource: FeatureLocalDataSource
) : FeatureRepository {
    
    override suspend fun getFeatureData(): Result<FeatureData> {
        return try {
            val remoteData = remoteDataSource.fetchData()
            localDataSource.saveData(remoteData)
            Result.success(remoteData.toDomain())
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
```

## Module Structure

```
app/                    # Main application module
├── core-ui/           # Shared UI components
├── core-data/         # Data layer implementations
├── core-domain/       # Domain layer contracts
├── feature-auth/      # Authentication feature
├── feature-dashboard/ # Dashboard feature
└── shared-resources/  # Shared resources
```

## Dependency Flow
- Presentation → Domain ← Data
- Features depend on Core modules
- No circular dependencies between layers
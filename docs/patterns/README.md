# Design Patterns

## MVVM Pattern Implementation

### ViewModel Structure
```kotlin
@HiltViewModel
class ExampleViewModel @Inject constructor(
    private val useCase: ExampleUseCase
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(ExampleUiState())
    val uiState: StateFlow<ExampleUiState> = _uiState.asStateFlow()
    
    fun handleIntent(intent: ExampleIntent) {
        viewModelScope.launch {
            _uiState.update { currentState ->
                when (intent) {
                    is ExampleIntent.LoadData -> {
                        loadData()
                        currentState.copy(isLoading = true)
                    }
                }
            }
        }
    }
}
```

### UI State Management
```kotlin
data class ExampleUiState(
    val isLoading: Boolean = false,
    val data: List<ExampleItem> = emptyList(),
    val error: String? = null
)

sealed class ExampleIntent {
    object LoadData : ExampleIntent()
    data class SelectItem(val item: ExampleItem) : ExampleIntent()
}
```

## Repository Pattern

### Repository Interface
```kotlin
interface ExampleRepository {
    suspend fun getData(): Result<List<ExampleData>>
    suspend fun saveData(data: ExampleData): Result<Unit>
}
```

### Repository Implementation
```kotlin
@Singleton
class ExampleRepositoryImpl @Inject constructor(
    private val remoteDataSource: ExampleRemoteDataSource,
    private val localDataSource: ExampleLocalDataSource,
    private val mapper: ExampleDataMapper
) : ExampleRepository {
    
    override suspend fun getData(): Result<List<ExampleData>> {
        return try {
            val localData = localDataSource.getData()
            if (localData.isNotEmpty()) {
                Result.success(localData.map { mapper.toDomain(it) })
            } else {
                val remoteData = remoteDataSource.fetchData()
                localDataSource.saveData(remoteData)
                Result.success(remoteData.map { mapper.toDomain(it) })
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
```

## Use Case Pattern

### Single Responsibility Use Cases
```kotlin
class GetExampleDataUseCase @Inject constructor(
    private val repository: ExampleRepository
) {
    suspend operator fun invoke(): Result<List<ExampleData>> {
        return repository.getData()
    }
}

class SaveExampleDataUseCase @Inject constructor(
    private val repository: ExampleRepository
) {
    suspend operator fun invoke(data: ExampleData): Result<Unit> {
        return repository.saveData(data)
    }
}
```

## Dependency Injection with Hilt

### Module Structure
```kotlin
@Module
@InstallIn(SingletonComponent::class)
abstract class DataModule {
    
    @Binds
    abstract fun bindExampleRepository(
        exampleRepositoryImpl: ExampleRepositoryImpl
    ): ExampleRepository
}

@Module
@InstallIn(SingletonComponent::class)
object NetworkModule {
    
    @Provides
    @Singleton
    fun provideRetrofit(): Retrofit {
        return Retrofit.Builder()
            .baseUrl(BuildConfig.BASE_URL)
            .addConverterFactory(GsonConverterFactory.create())
            .build()
    }
}
```

## Error Handling Pattern

### Sealed Class for Results
```kotlin
sealed class Result<out T> {
    data class Success<T>(val data: T) : Result<T>()
    data class Error(val exception: Throwable) : Result<Nothing>()
    object Loading : Result<Nothing>()
}

inline fun <T> Result<T>.onSuccess(action: (T) -> Unit): Result<T> {
    if (this is Result.Success) action(data)
    return this
}

inline fun <T> Result<T>.onError(action: (Throwable) -> Unit): Result<T> {
    if (this is Result.Error) action(exception)
    return this
}
```

## Navigation Pattern

### Compose Navigation
```kotlin
@Composable
fun AppNavigation(navController: NavHostController) {
    NavHost(
        navController = navController,
        startDestination = "home"
    ) {
        composable("home") {
            HomeScreen(
                onNavigateToDetail = { id ->
                    navController.navigate("detail/$id")
                }
            )
        }
        composable(
            "detail/{id}",
            arguments = listOf(navArgument("id") { type = NavType.StringType })
        ) { backStackEntry ->
            val id = backStackEntry.arguments?.getString("id") ?: ""
            DetailScreen(
                id = id,
                onNavigateBack = { navController.popBackStack() }
            )
        }
    }
}
```
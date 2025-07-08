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

## Service Pattern

### Service Interface
```kotlin
interface ExampleRemoteService {
    suspend fun fetchData(): List<ExampleData>
}

interface ExampleLocalService {
    suspend fun getData(): List<ExampleData>
    suspend fun saveData(data: List<ExampleData>)
}
```

### Service Implementation
```kotlin
@Singleton
class ExampleRemoteServiceImpl @Inject constructor(
    private val api: ExampleApi
) : ExampleRemoteService {
    
    override suspend fun fetchData(): List<ExampleData> {
        val response = api.getExamples()
        return response.items.map { dto ->
            ExampleData(
                id = dto.id,
                title = dto.name,
                description = dto.description
            )
        }
    }
}

@Singleton
class ExampleLocalServiceImpl @Inject constructor(
    private val database: ExampleDatabase
) : ExampleLocalService {
    
    override suspend fun getData(): List<ExampleData> {
        val entities = database.exampleDao().getAll()
        return entities.map { entity ->
            ExampleData(
                id = entity.id,
                title = entity.title,
                description = entity.description
            )
        }
    }
    
    override suspend fun saveData(data: List<ExampleData>) {
        val entities = data.map { item ->
            ExampleEntity(
                id = item.id,
                title = item.title,
                description = item.description
            )
        }
        database.exampleDao().insertAll(entities)
    }
}
```

## Use Case Pattern

### Business Logic Use Cases
```kotlin
class GetExampleDataUseCase @Inject constructor(
    private val remoteService: ExampleRemoteService,
    private val localService: ExampleLocalService
) {
    suspend operator fun invoke(): Result<List<ExampleData>> {
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

class RefreshExampleDataUseCase @Inject constructor(
    private val remoteService: ExampleRemoteService,
    private val localService: ExampleLocalService
) {
    suspend operator fun invoke(): Result<List<ExampleData>> {
        return try {
            val remoteData = remoteService.fetchData()
            localService.saveData(remoteData)
            Result.success(remoteData)
        } catch (e: Exception) {
            Result.failure(e)
        }
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
    abstract fun bindExampleRemoteService(
        exampleRemoteServiceImpl: ExampleRemoteServiceImpl
    ): ExampleRemoteService
    
    @Binds
    abstract fun bindExampleLocalService(
        exampleLocalServiceImpl: ExampleLocalServiceImpl
    ): ExampleLocalService
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
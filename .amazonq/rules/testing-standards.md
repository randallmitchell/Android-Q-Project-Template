# Testing Standards

## Unit Testing
- Test ViewModels using MockK for mocking
- Test Use Cases with fake repositories
- Use Turbine for testing StateFlow/Flow
- Aim for 80%+ code coverage on business logic

## UI Testing
- Use Compose Testing for UI components
- Test user interactions and state changes
- Use semantic properties for accessibility testing
- Create robot pattern for complex UI tests

## Integration Testing
- Test Repository implementations with real data sources
- Use TestRoom for database testing
- Mock network responses with MockWebServer
- Test dependency injection modules

## Test Structure
```kotlin
class ExampleViewModelTest {
    @get:Rule
    val mainDispatcherRule = MainDispatcherRule()
    
    private val mockUseCase = mockk<GetExampleDataUseCase>()
    private lateinit var viewModel: ExampleViewModel
    
    @Before
    fun setup() {
        viewModel = ExampleViewModel(mockUseCase)
    }
    
    @Test
    fun `when loadData is called, should update state correctly`() = runTest {
        // Given
        val expectedData = listOf(ExampleItem("1", "Test", "Description"))
        coEvery { mockUseCase() } returns Result.success(expectedData)
        
        // When
        viewModel.handleIntent(ExampleIntent.LoadData)
        
        // Then
        viewModel.uiState.test {
            val state = awaitItem()
            assertEquals(expectedData, state.items)
            assertEquals(false, state.isLoading)
        }
    }
}
```
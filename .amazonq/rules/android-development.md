# Android Development Rules

## Documentation Compliance
- ALWAYS follow patterns and examples in the /docs directory
- Reference /docs/architecture/ for Clean Architecture implementation
- Use /docs/patterns/ for MVVM, Repository, and other design patterns
- Follow /docs/gradle/ for module structure requirements
- Consult /docs/amazon-q-integration.md for AI-assisted development guidelines

## Project Structure
- Follow Clean Architecture principles with clear separation of concerns
- Use feature-based module organization
- Implement MVVM pattern with Service pattern for data layer
- Use Jetpack Compose for UI development

## Code Standards
- Use Kotlin for all new development
- Follow Kotlin coding conventions
- Implement dependency injection using Hilt
- Use Coroutines for asynchronous operations
- Implement proper error handling with sealed classes

## Architecture Layers
1. **Presentation Layer**: ViewModels, Compose UI, Navigation
2. **Domain Layer**: Use Cases (business logic), Service Interfaces, Domain Models
3. **Data Layer**: Service Implementations (handle their own data access)

## Module Requirements
- Each feature should be a separate Gradle module
- Library modules: app, library-ui, library-data, library-domain
- Feature modules: feature-[name] (e.g., feature-auth, feature-dashboard)
- Shared modules: shared-resources, shared-utils

## Testing Strategy
- Unit tests for ViewModels and Use Cases
- Integration tests for Service implementations
- UI tests for critical user flows using Compose Testing

## Dependencies Management
- Use Version Catalog (libs.versions.toml) for dependency management
- Keep dependencies up to date
- Use BOM for Compose dependencies
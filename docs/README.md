# Android Project Template 2025

This template provides a comprehensive foundation for Android application development with Amazon Q integration and standardized architecture patterns.

## Features
- Clean Architecture implementation
- MVVM with Repository pattern
- Jetpack Compose UI
- Dependency Injection with Hilt
- Amazon Q development integration
- Comprehensive documentation and examples

## Quick Start
1. Clone this template
2. Update package names and application ID
3. Configure Amazon Q integration
4. Follow the architecture patterns in `/docs`

## Documentation Structure
- [Architecture Overview](architecture/README.md)
- [Design Patterns](patterns/README.md)
- [Gradle Module Requirements](gradle/README.md)
- [Amazon Q Integration](amazon-q-integration.md)

## Amazon Q Integration
This template is designed to work seamlessly with Amazon Q for development assistance. The `.amazonq/rules/` directory contains development guidelines that Amazon Q will use to provide consistent code suggestions and architectural guidance.

## Template Usage
When creating a new project from this template:
1. Replace all instances of `com.methodsignature.projecttemplate2025` with your package name
2. Update `rootProject.name` in `settings.gradle.kts`
3. Modify app name in `strings.xml`
4. Update application ID in `app/build.gradle.kts`
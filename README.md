# Android Project Template 2025

A comprehensive Android project template featuring Clean Architecture, MVVM pattern, Jetpack Compose, and seamless Amazon Q integration for enhanced development productivity.

## 🚀 Features

- **Clean Architecture** with clear separation of concerns
- **MVVM Pattern** with StateFlow for reactive UI
- **Service Pattern** for data layer separation
- **Jetpack Compose** for modern declarative UI
- **Dependency Injection** with Hilt
- **Amazon Q Integration** with contextual development rules
- **Comprehensive Documentation** with code examples
- **Module-based Structure** for scalability
- **Version Catalog** for dependency management
- **Testing Setup** with best practices

## 📁 Project Structure

```
ProjectTemplate2025/
├── .amazonq/rules/           # Amazon Q development rules
├── docs/                     # Comprehensive documentation
│   ├── architecture/         # Architecture patterns and examples
│   ├── patterns/            # Design patterns with code samples
│   └── gradle/              # Module requirements and setup
├── app/                     # Main application module
├── feature-example/         # Example feature module
└── template-config.json     # Template configuration
```

## 🏗️ Architecture

### Clean Architecture Layers
1. **Presentation Layer**: ViewModels, Compose UI, Navigation
2. **Domain Layer**: Use Cases (business logic), Service Interfaces, Domain Models  
3. **Data Layer**: Service Implementations (handle their own data access)

### Module Structure
- **app**: Main application module with navigation
- **library-ui**: Shared UI components and themes
- **library-data**: Service implementations
- **library-domain**: Business logic and contracts
- **feature-***: Individual feature modules

## 🔧 Quick Start

### 1. Setup New Project
```bash
# Clone template
git clone <template-repo> YourProjectName
cd YourProjectName

# Run setup script
./setup.sh
```

### 2. Update Configuration
*Note: The setup script automatically handles these updates for you:*
- ✅ Replace package names: `com.methodsignature.projecttemplate2025` → `com.yourcompany.yourapp`
- ✅ Update app name in `strings.xml`
- ✅ Modify `rootProject.name` in `settings.gradle.kts`
- ✅ Update class name references
- ✅ Rename package directories to match new package structure

### 3. Amazon Q Integration
The template includes pre-configured Amazon Q rules:
- Development standards in `.amazonq/rules/`
- Architecture documentation in `docs/`
- Use `@workspace` to load project context

## 📚 Documentation

| Document | Description |
|----------|-------------|
| [Architecture Overview](docs/architecture/README.md) | Clean Architecture implementation |
| [Design Patterns](docs/patterns/README.md) | MVVM, Service, and other patterns |
| [Gradle Modules](docs/gradle/README.md) | Module structure and requirements |
| [Amazon Q Integration](docs/amazon-q-integration.md) | AI-assisted development setup |
| [Setup Guide](setup-template.md) | Step-by-step template usage |

## 🤖 Amazon Q Integration

### Pre-configured Rules
- Android development standards
- Architecture compliance
- Testing requirements
- Code quality guidelines

### Usage Examples
```
@workspace Create a new feature module for user authentication
@docs/patterns Implement data loading with proper error handling
@feature-example Add unit tests for the ViewModel
```

### Context Loading
Amazon Q automatically loads:
- Project architecture patterns
- Established coding conventions
- Library and feature module structure requirements
- Testing strategies

## 🧪 Testing Strategy

- **Unit Tests**: ViewModels and Use Cases
- **Integration Tests**: Service implementations
- **UI Tests**: Critical user flows with Compose Testing
- **Architecture Tests**: Module dependency validation

## 📦 Dependencies

### Core Dependencies
- Kotlin 1.9.0
- Compose BOM 2023.08.00
- Hilt 2.48
- Navigation Compose 2.6.0

### Development Tools
- Version Catalog for dependency management
- Gradle Kotlin DSL
- ProGuard configuration
- Git ignore templates

## 🔄 Development Workflow

1. **Feature Development**: Create feature modules following template patterns
2. **Code Review**: Use Amazon Q for architecture compliance checks
3. **Testing**: Implement comprehensive test coverage
4. **Documentation**: Update docs for new patterns or conventions

## 📋 Template Checklist

When using this template:
- [ ] Update package names and app configuration
- [ ] Configure Amazon Q integration
- [ ] Review and customize architecture documentation
- [ ] Set up CI/CD pipelines
- [ ] Configure code quality tools
- [ ] Add project-specific requirements

## 🤝 Contributing

When extending this template:
1. Follow established architecture patterns
2. Update documentation with examples
3. Add Amazon Q rules for new conventions
4. Include comprehensive tests
5. Update template configuration

## 📄 License

This template is provided as-is for development use. Customize according to your project needs.

---

**Built with ❤️ for Android developers using Amazon Q**
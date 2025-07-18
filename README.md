# Android Project Template 2025

A comprehensive Android project template featuring Clean Architecture, MVVM pattern, Jetpack Compose with Material Design 3, and seamless Amazon Q integration. Includes a todo/checklist example demonstrating best practices.

## 🚀 Features

### 🤖 Agentic AI Development
- **Amazon Q Integration** with pre-configured development rules and context
- **Structured Playbooks** for optimized AI-human communication
- **Role-Based Context Loading** for efficient AI processing
- **Guided Requirements Gathering** through conversational workflows
- **AI-Assisted Code Generation** following project architecture patterns
- **Contextual Documentation** that Amazon Q automatically references

### 🏗️ Android Architecture
- **Clean Architecture** with clear separation of concerns
- **MVVM Pattern** with StateFlow for reactive UI
- **Service Pattern** for data layer separation
- **Module-based Structure** for scalability and AI-assisted development
- **Dependency Injection** with Hilt

### 🎨 Modern Android Development
- **Jetpack Compose** with Material Design 3
- **Custom UI Components** in dedicated library module
- **Todo/Checklist Example** demonstrating real-world patterns
- **Version Catalog** for dependency management
- **Comprehensive Testing Setup** with best practices

## 📁 Project Structure

```
ProjectTemplate2025/
├── .amazonq/rules/           # Amazon Q development rules
├── docs/                     # Comprehensive documentation
│   ├── architecture/         # Architecture patterns and examples
│   ├── patterns/            # Design patterns with code samples
│   ├── gradle/              # Module requirements and setup
│   ├── amazon-q-integration.md
│   ├── playbooks-integration.md
│   └── material-design.md
├── playbooks/               # Development workflow playbooks
│   ├── roles/               # AI agent role definitions
│   ├── templates/           # Playbook templates
│   └── [playbook-name].md   # Individual playbooks
├── app/                     # Main application module
├── feature-example/         # Example feature module
├── library-ui/              # Shared UI components
├── gradle/                  # Gradle wrapper and version catalog
│   └── libs.versions.toml   # Dependency version catalog
└── template-config.json     # Template configuration
```

## 🏗️ Architecture

### Clean Architecture Layers
1. **Presentation Layer**: ViewModels, Compose UI, Navigation
2. **Domain Layer**: Use Cases (business logic), Service Interfaces, Domain Models  
3. **Data Layer**: Service Implementations (handle their own data access)

### Module Structure
- **app**: Main application module with navigation
- **library-ui**: Shared UI components with Material Design
- **library-data**: Service implementations
- **library-domain**: Business logic and contracts
- **feature-example**: Todo/checklist feature demonstrating patterns

## 🚀 Getting Started

### Explore the Template
**New to this template?** Start with the Quick Start playbook:
```
@playbooks/quick-start.md I want to quickly get started with this template
```
This will guide you through the project structure, run the example, and show you how to use Amazon Q effectively.

### Create a New Project
**Ready to build something?** Use the Setup New Project playbook:
```
@playbooks/setup-new-project.md I want to set up a new project based on this template
```
This will automatically handle package renaming, configuration, and customization for your new project.

## 📚 Documentation

| Document | Description |
|----------|-------------|
| [Architecture Overview](docs/architecture/README.md) | Clean Architecture implementation |
| [Design Patterns](docs/patterns/README.md) | MVVM, Service, and other patterns |
| [Material Design Guidelines](docs/material-design.md) | Material Design 3 implementation |
| [UI Components](docs/ui-components.md) | Custom component documentation |
| [Gradle Modules](docs/gradle/README.md) | Module structure and requirements |
| [Amazon Q Integration](docs/amazon-q-integration.md) | AI-assisted development setup |
| [Playbook Philosophy](docs/playbook-philosophy.md) | Structured AI-assisted development approach |
| [Setup Guide](playbooks/setup-new-project.md) | Step-by-step project setup playbook |

## 🤖 Amazon Q Integration

### Pre-configured Rules
- Android development standards
- Architecture compliance
- Testing requirements
- Code quality guidelines

### Getting Started with Playbooks
**New to the project?** Start here:
```
@playbooks/welcome-assistant.md Hi, I need help with [describe your task]
```
The Welcome Assistant will guide you to the right playbook based on your needs.

### Playbook Examples
```
@playbooks/setup-new-project.md I want to set up a new project
@playbooks/create-new-playbook.md I want to create a playbook for adding tests
@playbooks/welcome-assistant.md I'm not sure which playbook to use
```

### Direct AI Examples
```
@workspace Create a new feature module for user authentication
@docs/patterns Implement data loading with proper error handling
@feature-example Add unit tests for the TodoViewModel
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
- [ ] Run the setup playbook with Amazon Q
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
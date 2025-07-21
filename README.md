# Agentic AI Android Template 2025

An AI-first Android project template designed for agentic software development with Amazon Q. Features structured playbooks, role-based AI workflows, and production-ready architecture patterns optimized for human-AI collaboration.

## 🚀 Features

**Want to learn more?** Get a detailed overview:
```
Please run the project overview playbook.
```

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

### Learn About This Template
**Want to understand what this template offers?** Get a comprehensive overview:
```
@playbooks/project-overview.md Tell me about this project's features and capabilities
```
This will explain all features, architecture patterns, and AI integration capabilities.

### Explore the Template
**New to this template?** Start with the Quick Start playbook:
```
Please run the quick start playbook.
```
This will guide you through the project structure, run the example, and show you how to use Amazon Q effectively.

### Create a New Project
**Ready to build something?** Use the Setup New Project playbook:
```
Please run the setup new project playbook.
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

This template includes pre-configured Amazon Q rules and structured playbooks for AI-assisted development.

**Need help with a task?** Use the Welcome Assistant:
```
Please run the welcome assistant playbook.
```

## 📋 Template Checklist

When using this template:
- [ ] Run the setup playbook with Amazon Q
- [ ] Review and customize architecture documentation
- [ ] Set up CI/CD pipelines
- [ ] Configure code quality tools
- [ ] Add project-specific requirements

## 📄 License

This template is provided as-is for development use. Customize according to your project needs.

---

**Built with ❤️ for Android developers using Amazon Q**
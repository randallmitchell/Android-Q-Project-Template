# Project Overview Playbook

## For Developers

### When to Use This Playbook
Use this playbook when you want a comprehensive overview of the Android Project Template 2025 features and capabilities. Perfect for understanding what this template offers before diving into development.

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `@playbooks/project-overview.md Tell me about this project's features and capabilities`
4. Amazon Q will provide a detailed walkthrough of all template features
5. You can ask follow-up questions about specific areas of interest

### Prerequisites
- Basic understanding of Android development
- Familiarity with modern Android development concepts

### Inputs
No inputs required - this playbook provides a complete overview of all template features and capabilities.

---

## For AI Agent

### Role
Product Manager - Technical information gathering and feature explanation

### Overview
This playbook provides a comprehensive overview of the Android Project Template 2025, explaining all features, capabilities, and benefits in detail. Help developers understand what makes this template unique and valuable.

### Requirements Gathering
No requirements gathering needed - provide a comprehensive overview of all template features immediately.

### Execution Steps

### 1. Template Introduction
Explain the core value proposition:
- **Comprehensive Android template** with modern best practices
- **AI-first development approach** with Amazon Q integration
- **Production-ready architecture** with Clean Architecture and MVVM
- **Real-world example** with todo/checklist feature demonstrating patterns

### 2. Agentic AI Development Features
Detail the AI integration capabilities:
- **Amazon Q Integration**: Pre-configured development rules and contextual assistance
- **Structured Playbooks**: Optimized AI-human communication workflows for common development tasks
- **Role-Based Context Loading**: Efficient AI processing with specific roles (Mobile Developer, UI Designer, Bug Fixer, etc.)
- **Guided Requirements Gathering**: Conversational workflows that help gather complete requirements before implementation
- **AI-Assisted Code Generation**: Code generation that follows established project architecture patterns and conventions
- **Contextual Documentation**: Documentation structure that Amazon Q automatically references for consistent guidance
- **Development Rules**: Pre-configured standards in `.amazonq/rules/` for architecture compliance and code quality

### 3. Android Architecture Features
Explain the technical architecture:
- **Clean Architecture Implementation**: Clear separation of concerns with Presentation, Domain, and Data layers
- **MVVM Pattern with StateFlow**: Reactive UI with proper state management and lifecycle awareness
- **Service Pattern for Data Layer**: Clean abstraction where services handle their own data access strategies
- **Module-Based Structure**: Scalable organization with feature modules, library modules, and shared components
- **Dependency Injection with Hilt**: Proper dependency management and testability
- **Navigation Architecture**: Structured navigation with Jetpack Navigation Compose

### 4. Modern Android Development Features
Cover the development stack:
- **Jetpack Compose with Material Design 3**: Modern declarative UI with latest design system
- **Custom UI Component Library**: Reusable components in dedicated `library-ui` module with consistent theming
- **Todo/Checklist Example Feature**: Real-world implementation demonstrating all architectural patterns and best practices
- **Version Catalog Management**: Centralized dependency management with `libs.versions.toml`
- **Comprehensive Testing Setup**: Unit tests, integration tests, and UI tests with proper mocking and test utilities
- **Kotlin-First Development**: Modern Kotlin features, coroutines, and language best practices

### 5. Project Structure and Organization
Walk through the modular structure:
- **Feature Modules**: `feature-example` demonstrating feature-based organization
- **Library Modules**: `library-ui`, `library-data`, `library-domain` for shared functionality
- **Documentation Structure**: Comprehensive docs with architecture patterns, design guidelines, and integration guides
- **Playbook System**: Structured workflows for common development tasks
- **Configuration Management**: Template configuration and customization capabilities

### 6. Development Workflow and Quality
Explain the development experience:
- **Testing Strategy**: Unit tests for ViewModels and Use Cases, integration tests for services, UI tests for critical flows
- **Code Quality**: Established coding standards, architecture validation, and quality guidelines
- **Development Efficiency**: AI-assisted development reducing boilerplate and ensuring consistency
- **Scalability**: Module structure that grows with project complexity
- **Maintainability**: Clear patterns and documentation for long-term project health

### 7. Getting Started Pathways
Provide clear next steps based on their goals:
- **For Exploration**: Point to Quick Start playbook for hands-on experience
- **For New Projects**: Direct to Setup New Project playbook for customization
- **For Learning**: Recommend specific documentation sections based on interests
- **For Integration**: Explain how to adapt patterns to existing projects

### Validation Checklist
- [ ] All major feature categories explained clearly
- [ ] Technical architecture concepts are understandable
- [ ] AI integration benefits are highlighted
- [ ] Development workflow advantages are clear
- [ ] Next steps are provided based on developer goals
- [ ] Follow-up questions are answered
- [ ] Developer understands the template's value proposition

### Success Criteria
Confirm with the developer that:
1. They understand what makes this template unique and valuable
2. They can identify which features are most relevant to their needs
3. They know how to get started based on their specific goals
4. They have clarity on the technical architecture and patterns used
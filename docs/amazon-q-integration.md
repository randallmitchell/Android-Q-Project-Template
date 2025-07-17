# Amazon Q Integration Guide

## Overview
This template is designed to work seamlessly with Amazon Q Developer for enhanced development productivity. Amazon Q will use the rules and documentation in this project to provide consistent, architecture-aligned code suggestions.

## Setup Instructions

### 1. Amazon Q Rules Configuration
The `.amazonq/rules/` directory contains development guidelines that Amazon Q automatically loads:

- `android-development.md`: Core Android development standards
- Additional rule files can be added for specific domains

### 2. Context Loading
Amazon Q will automatically load project documentation when you:
- Reference files using `@filename` syntax
- Use `@workspace` to include relevant project context
- Mention specific architectural components

## Using Amazon Q with This Template

### Architecture Guidance
When asking Amazon Q about architecture decisions, it will reference:
- Clean Architecture principles from `/docs/architecture/`
- MVVM and Repository patterns from `/docs/patterns/`
- Module structure requirements from `/docs/gradle/`

### Code Generation Examples

#### Creating a New Feature Module
```
@workspace Create a new feature module for user profile management following the template architecture
```

Amazon Q will generate:
- Proper module structure
- ViewModel with StateFlow
- Repository interface and implementation
- Use cases following the established patterns

#### Implementing UI Components
```
@core-ui Create a reusable card component for displaying user information
```

Amazon Q will create components that:
- Follow Material Design 3 guidelines
- Use established theming from core-ui
- Include proper accessibility support

### Development Workflow Integration

#### Code Review Assistance
```
@workspace Review this implementation for architecture compliance
```

Amazon Q will check:
- Layer separation adherence
- Dependency injection usage
- Error handling patterns
- Testing coverage

#### Refactoring Support
```
@feature-auth Refactor this code to follow the repository pattern
```

Amazon Q will:
- Identify current pattern violations
- Suggest proper repository implementation
- Maintain existing functionality

## Best Practices for Amazon Q Usage

### 1. Context Specification
Always provide relevant context:
```
@docs/patterns @feature-dashboard Help me implement data loading with proper error handling
```

### 2. Architecture Alignment
Reference architectural components:
```
Following the MVVM pattern in @docs/patterns, create a ViewModel for managing shopping cart state
```

### 3. Module-Specific Requests
Target specific modules:
```
@core-data Add a new repository for handling user preferences with Room database
```

## Template Customization for Amazon Q

### Adding Custom Rules
Create additional rule files in `.amazonq/rules/`:

```markdown
# .amazonq/rules/api-integration.md
## API Integration Standards
- Use Retrofit for network calls
- Implement proper error handling with sealed classes
- Cache responses using Room database
- Use Hilt for dependency injection
```

### Documentation Updates
Keep documentation current to ensure Amazon Q provides accurate guidance:
- Update architecture docs when patterns change
- Add new examples for complex implementations
- Document any project-specific conventions

## Advanced Amazon Q Features

### Saved Prompts
Create reusable prompts in `~/.aws/amazonq/prompts/`:

```markdown
# android-feature-template.md
Create a new Android feature module with:
- MVVM architecture
- Repository pattern
- Hilt dependency injection
- Compose UI
- Unit tests for ViewModel and Repository
```

Use with: `@android-feature-template Create user authentication feature`

### Workspace Context
Use `@workspace` for comprehensive context:
- Automatically includes relevant files
- Considers project structure
- Applies established patterns

### Playbooks Integration
Use structured playbooks for common development tasks:

```
@playbooks/create-new-screen.md

[Your completed Playbook Requirements Document (PRD) here]
```

Playbooks provide:
- Standardized development workflows
- Requirements gathering templates
- Step-by-step execution guidance
- Validation criteria

See [Playbooks Integration Guide](playbooks-integration.md) for detailed usage.

## Troubleshooting

### Amazon Q Not Following Template Patterns
1. Ensure `.amazonq/rules/` files are properly formatted
2. Use specific file references (`@docs/architecture/README.md`)
3. Provide explicit architectural requirements in prompts

### Inconsistent Code Generation
1. Update documentation with specific examples
2. Add more detailed rules for edge cases
3. Use `@workspace` for broader context

### Performance Optimization
1. Keep rule files concise and focused
2. Use specific file references instead of broad context
3. Break complex requests into smaller, focused prompts
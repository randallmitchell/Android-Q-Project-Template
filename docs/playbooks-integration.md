# Playbooks Integration Guide

## Overview
This document explains how to integrate the Playbook system with Amazon Q for automated development task execution.

## Playbook System Architecture

```
playbooks/
├── README.md                    # Main playbook documentation
├── [playbook-name].md          # Individual playbook definitions
├── templates/                  # PRD templates for each playbook
│   └── [playbook-name]-prd.md
└── examples/                   # Example PRDs showing proper usage
    └── [playbook-name]-example.md
```

## Amazon Q Integration

### Using Playbooks in Chat
1. **Reference the playbook**: `@playbooks/[playbook-name].md`
2. **Provide your PRD**: Include completed requirements document
3. **Amazon Q executes**: Follows playbook steps automatically

### Example Chat Interaction
```
@playbooks/create-new-screen.md

Here is my completed PRD:

# Playbook Requirements Document (PRD)
## Create New Screen

### Project Context
- **Current Navigation Flow**: Todo feature flow
- **Target Feature Module**: feature-example
- **Integration Point**: Navigate from TodoScreen when item is clicked

[... rest of completed PRD ...]
```

## Workflow Integration

### 1. Planning Phase
- Choose appropriate playbook for your task
- Use playbook template to gather requirements
- Review example Playbook Requirements Documents (PRDs) for guidance

### 2. Requirements Gathering
- Fill out Playbook Requirements Document (PRD) template completely
- Validate all required fields are completed
- Review acceptance criteria

### 3. Execution Phase
- Open Amazon Q Chat
- Reference playbook and provide Playbook Requirements Document (PRD)
- Amazon Q follows playbook steps
- Review generated code and structure

### 4. Validation Phase
- Check acceptance criteria from PRD
- Run tests and verify functionality
- Update documentation if needed

## Best Practices

### PRD Creation
- Be specific and detailed in requirements
- Include all necessary context
- Define clear acceptance criteria
- Reference existing project patterns

### Amazon Q Usage
- Always reference the specific playbook
- Provide complete Playbook Requirements Document (PRD) in single message
- Ask for clarification if steps are unclear
- Validate results against acceptance criteria

### Code Review
- Ensure generated code follows project patterns
- Verify Clean Architecture principles
- Check test coverage meets requirements
- Validate accessibility implementation

## Available Playbooks

| Task | Playbook | When to Use |
|------|----------|-------------|
| Add new screen to existing flow | `create-new-screen.md` | Adding detail views, forms, or new screens within a feature |
| Create entirely new feature | `create-new-flow.md` | Building new major features with multiple screens |
| Add form input field | `add-form-input.md` | Extending existing forms with new fields |
| Add screen section | `create-screen-section.md` | Adding new UI sections to existing screens |
| Update SDK dependency | `update-sdk.md` | Safely updating third-party libraries |

## Extending the System

### Adding New Playbooks
1. Create playbook definition in `/playbooks/`
2. Create Playbook Requirements Document (PRD) template in `/playbooks/templates/`
3. Add example PRD in `/playbooks/examples/`
4. Update main README with playbook entry
5. Test with Amazon Q integration

**Note**: Amazon Q can help generate new playbooks by referencing existing playbook patterns:
```
@playbooks Create a new playbook for [task description] following the existing playbook structure and patterns
```

### Template Structure
Each playbook should include:
- **Overview**: Clear purpose and scope
- **Prerequisites**: What must exist first
- **Requirements**: Link to PRD template
- **Steps**: Detailed implementation process
- **Validation**: Success criteria
- **Template**: Link to Playbook Requirements Document (PRD) template
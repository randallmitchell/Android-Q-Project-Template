# Playbooks

Playbooks provide a structured approach to AI-assisted development in this project. They represent a clear communication protocol that helps optimize both the AI agent's processing efficiency and the developer's time investment.

## What is a Playbook?

A playbook is a structured guide that:
- Defines the steps for a specific developer task
- Specifies roles and context needed for AI execution
- Includes requirements gathering through guided questions
- Can be executed through Amazon Q Chat integration
- Can be created for one-time tasks or reusable workflows

See [Playbook Philosophy](../docs/playbook-philosophy.md) for detailed benefits and approach.

## Available Playbooks

| Playbook | Description | Template |
|----------|-------------|----------|
| [Welcome Assistant](welcome-assistant.md) | Interactive guide to help navigate playbooks and development tasks | N/A |
| [Project Overview](project-overview.md) | Comprehensive overview of template features and capabilities | N/A |
| [Quick Start](quick-start.md) | Quick introduction and orientation to the template project | N/A |
| [Setup New Project](setup-new-project.md) | Set up a new project based on this template | N/A |
| [Create New Playbook](create-new-playbook.md) | Create a new structured playbook for development workflows | [Template](templates/playbook-template.md) |
| [Create New Screen](create-new-screen.md) | Add a new screen to an existing navigation flow | [Template](templates/create-new-screen-prd.md) |
| [Create New Flow](create-new-flow.md) | Create a new navigation flow in the app | [Template](templates/create-new-flow-prd.md) |

## How to Use Playbooks

### Execute a Playbook
1. Open Amazon Q Chat
2. Reference the playbook: `@playbooks/[playbook-name].md [brief description of what you want to do]`
3. Amazon Q will ask guided questions to gather the required information
4. Once you provide the information, Amazon Q will execute the playbook steps

### Example Usage
```
@playbooks/create-new-screen.md I want to add a new settings screen
@playbooks/setup-new-project.md I want to set up a new project based on this template
```

## Playbook Structure

Each playbook contains:

### For Developers
- **When to Use**: Scenarios for using this playbook
- **How to Run**: Step-by-step instructions for invoking Amazon Q
- **Prerequisites**: What must exist before running
- **Inputs**: Information needed (gathered through guided questions)

### For AI Agent
- **Role(s)**: Specific roles that define context and responsibilities
- **Overview**: What the AI should accomplish
- **Requirements Gathering**: Guided questions to collect information
- **Execution Steps**: Detailed implementation process
- **Validation Checklist**: How to verify successful completion
- **Success Criteria**: Definition of done

## Roles

Playbooks use roles to optimize AI context loading. Available roles include:
- **Mobile Developer**: Full-stack feature implementation
- **UI Designer**: Design system and component work
- **Bug Fixer**: Debugging and issue resolution
- **Playbook Creator**: Process automation
- **Product Manager**: Technical information gathering

See [roles directory](roles/) for detailed role definitions.
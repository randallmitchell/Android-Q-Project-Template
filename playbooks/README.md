# Playbooks

Playbooks define step-by-step processes for common Android development tasks within this project. Each playbook includes requirements gathering, execution steps, and validation criteria.

## What is a Playbook?

A playbook is a structured guide that:
- Defines the steps for a specific developer task
- Specifies requirements needed before execution
- Provides templates for gathering those requirements
- Can be executed through Amazon Q Chat integration

## Available Playbooks

| Playbook | Description | Template |
|----------|-------------|----------|
| [Create New Screen](create-new-screen.md) | Add a new screen to an existing navigation flow | [Template](templates/create-new-screen-prd.md) |
| [Create New Flow](create-new-flow.md) | Create a new navigation flow in the app | [Template](templates/create-new-flow-prd.md) |
| [Add Form Input](add-form-input.md) | Add an input field to an existing form | [Template](templates/add-form-input-prd.md) |
| [Create Screen Section](create-screen-section.md) | Add a new section to an existing screen | [Template](templates/create-screen-section-prd.md) |
| [Update SDK](update-sdk.md) | Update an SDK dependency | [Template](templates/update-sdk-prd.md) |

## How to Use Playbooks

### 1. Generate Playbook Requirements Document (PRD)
1. Choose the appropriate playbook for your task
2. Use the playbook's template to create a Playbook Requirements Document (PRD)
3. Fill in all required parameters and specifications

### 2. Execute Playbook
1. Open Amazon Q Chat
2. Reference the playbook: `@playbooks/[playbook-name].md`
3. Provide your completed PRD
4. Amazon Q will execute the playbook steps

### Example Usage
```
@playbooks/create-new-screen.md

Here is my Playbook Requirements Document (PRD):
[paste your completed PRD here]
```

## Playbook Structure

Each playbook contains:
- **Overview**: Purpose and scope
- **Prerequisites**: What must exist before running
- **Requirements**: Parameters needed for execution
- **Steps**: Detailed implementation process
- **Validation**: How to verify successful completion
- **Template Reference**: Link to Playbook Requirements Document (PRD) template

## PRD Template Structure

Each Playbook Requirements Document (PRD) template includes:
- **Project Context**: Current state information
- **Requirements**: Specific parameters for the task
- **Specifications**: Technical details and constraints
- **Acceptance Criteria**: Definition of done
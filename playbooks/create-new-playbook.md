# Create New Playbook

## For Developers

### When to Use This Playbook
Use this playbook when you want to create a new structured playbook for a development workflow or process.

**Why create playbooks?** Playbooks are the most efficient way to work with AI in this project. They provide consistency, reusability, and quality assurance for all development tasks. See [Playbook Philosophy](../docs/playbook-philosophy.md) for more details on the benefits and approach.

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `@playbooks/create-new-playbook.md I want to create a new playbook`
4. Amazon Q will ask you for the required information listed below
5. Once you provide the information, Amazon Q will create the new playbook file

### Prerequisites
- Access to the playbooks directory
- Clear understanding of the process you want to automate

### Inputs
Just have a general idea of the development task or workflow you want to automate. Amazon Q will help you work through the details with guided questions.

---

## For AI Agent

### Role(s)
**REQUIRED**: See [Playbook Creator](roles/playbook-creator.md)

**Primary Role**: Playbook Creator
- Process automation and workflow design with full playbook ecosystem context
- Access to playbook templates, role definitions, and workflow patterns
- Specializes in creating structured, reusable development processes

**Role Selection Reasoning**: This playbook creates new playbooks and requires deep understanding of the playbook system, role definitions, and workflow design patterns - matching the Playbook Creator role's specialized focus.

### Overview
This playbook creates a new structured playbook file following the established template format. Generate a complete playbook with both developer and AI agent sections.

### Requirements Gathering

**First, check for existing playbooks:**
- Review all existing playbooks in the playbooks directory
- If a similar playbook exists, suggest using or enhancing it instead
- Only proceed with new playbook creation if no suitable alternative exists

**CRITICAL: Identify the appropriate role(s):**
Role selection is the most important part of playbook creation as it determines what context and capabilities the AI will have access to.

Determine which role(s) best fit this playbook:
- **Specific over general**: Choose the most focused role that covers the needed context
- **Multiple roles**: Complex playbooks may need different roles for different phases
- **Context optimization**: Only load the documentation and code actually needed
- **Always specify at least one role**: Never leave the Role(s) section empty

Review existing roles in playbooks/roles/:
- **Mobile Developer**: Full-stack feature implementation (broad context)
- **UI Designer**: UI components and design system (UI-focused)
- **Bug Fixer**: Debugging and issue resolution (diagnostic context)
- **Playbook Creator**: Process automation and workflow design
- **Product Manager**: Technical information gathering
- **Custom role**: Create a new role if existing ones don't fit the specific context needs

**Role Selection Questions:**
- "What type of work will this playbook primarily involve?"
- "What documentation and code context will the AI need access to?"
- "Should this use a broad role like Mobile Developer or a focused role like UI Designer?"
- "Will different steps need different roles, or can one role handle everything?"

**Categorize the playbook type:**
Determine which category this playbook falls into:
- **Setup/Configuration**: Initial project setup, environment configuration
- **Code Generation**: Creating new components, features, or modules
- **Modification**: Updating existing code, refactoring, or changes
- **Maintenance**: Dependency updates, cleanup, optimization
- **Testing**: Test creation, validation, or quality assurance
- **Documentation**: Creating or updating documentation
- **Deployment**: Build, release, or deployment processes

**Use guided questions to define the playbook:**

**Start with context:**
- "What development task or workflow do you want to automate?"
- "Can you describe the current manual process?"
- "What pain points are you trying to solve?"

**Refine the scope:**
- "What would trigger someone to use this playbook?"
- "What should be the end result when this playbook completes?"
- "Are there any variations or edge cases to consider?"

**Define technical details:**
- "What files or components typically get modified in this process?"
- "What information would you need from a developer to complete this task?"
- "How would you verify that the task was completed successfully?"

**Finalize structure:**
- "What would be a good name for this playbook?"
- "What prerequisites should developers have before running this?"

### Execution Steps

### 1. Create Playbook File
- Create new .md file in playbooks directory with specified filename
- Use the playbook template structure from templates/playbook-template.md

### 2. Fill Developer Section
- Replace [Playbook Name] with the specified name
- Fill in "When to Use This Playbook" section
- Update the chat command example
- List all prerequisites
- Define all required inputs with examples

### 3. Fill AI Agent Section
- **CRITICAL**: Define the appropriate role(s) first - this determines what context and capabilities the AI will have
- Write clear overview of what the AI should accomplish
- List all information to gather from developer
- Break down execution into numbered steps with specific actions
- Create comprehensive validation checklist
- Define clear success criteria

### 4. Update Documentation
- Add the new playbook to playbooks/README.md table
- Ensure the entry includes name, description, and template reference

### Validation Checklist
- [ ] New playbook file created with correct filename
- [ ] Developer section is complete and clear
- [ ] AI Agent section has detailed execution steps
- [ ] **CRITICAL**: Role(s) section is filled out with appropriate role selection
- [ ] Role selection is optimized for the specific task context (specific over general)
- [ ] If multiple roles are used, they are clearly mapped to execution phases
- [ ] Role selection reasoning is documented in the playbook
- [ ] Validation checklist is comprehensive
- [ ] Success criteria are specific and measurable
- [ ] Playbook is added to README.md
- [ ] File follows the established template structure

### Success Criteria
Confirm with the developer that:
1. The new playbook covers all aspects of their intended process
2. The inputs section captures all necessary information
3. The execution steps are detailed and actionable
4. The playbook is ready for use by other developers
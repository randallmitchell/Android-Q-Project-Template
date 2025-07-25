# [Playbook Name] Playbook

## For Developers

### When to Use This Playbook
[Describe when developers should use this playbook]

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `Please run the [playbook name] playbook.`
4. Amazon Q will ask you for the required information listed below
5. Once you provide the information, Amazon Q will execute the steps automatically

### Prerequisites
[List what needs to be in place before running this playbook]

### Inputs
Before starting, have the following information ready for the AI Agent:
- **[Input 1]** (e.g., "[example]")
- **[Input 2]** (e.g., "[example]")
- **[Input 3]** [description if needed]

---

## For AI Agent

### Role(s)
**REQUIRED**: See [Role Name](roles/role-file.md)

**Primary Role**: [Choose the most specific role that matches the task context]
- [mobile-developer.md] - Full-stack feature implementation (broad context)
- [ui-designer.md] - UI components and design system (UI-focused)
- [bug-fixer.md] - Debugging and issue resolution (diagnostic context)
- [playbook-creator.md] - Process automation and workflow design (meta-process)
- [product-manager.md] - Technical information gathering (analysis-focused)

**Additional Roles** (if needed):
- [Secondary role for specific steps, if applicable]
- [Map each role to specific execution steps]

**Role Selection Reasoning**: [Brief explanation of why this role was chosen and how it matches the playbook's requirements]

**Context Loading Strategy**: Based on the selected role(s), automatically load:
- Role-specific documentation and code context
- Relevant project files and patterns
- Specialized knowledge areas for the task

### Overview
[Brief description of what this playbook accomplishes and what the AI should do]

### Requirements Gathering
Ask the developer for the following information:
- [Input 1 description]
- [Input 2 description]
- [Input 3 description]

### Execution Steps

### 1. [Step Name]
- [Action 1]
- [Action 2]
- [Action 3]

### 2. [Step Name]
- [Action 1]
- [Action 2]

### 3. [Step Name]
- [Action 1]
- [Action 2]

### Validation Checklist
- [ ] [Validation item 1]
- [ ] [Validation item 2]
- [ ] [Validation item 3]
- [ ] All developer requirements have been implemented

### Success Criteria
Confirm with the developer that:
1. [Success criterion 1]
2. [Success criterion 2]
3. [Success criterion 3]
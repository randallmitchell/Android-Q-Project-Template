# Welcome Assistant Playbook

## For Developers

### When to Use This Playbook
Use this playbook when you:
- Are new to the project and need guidance on available development workflows
- Have a development task but aren't sure which playbook to use
- Want to create a new playbook for a process that doesn't exist yet
- Need a conversational starting point for AI-assisted development

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `@playbooks/welcome-assistant.md Hi, I need help with [describe your task or situation]`
4. Amazon Q will have a conversation with you to understand your needs
5. Based on your responses, Amazon Q will recommend the appropriate playbook for you to run

### Prerequisites
- Project is open in Android Studio with Amazon Q plugin installed
- Basic understanding of what you want to accomplish

### Inputs
Just describe your situation in natural language. The AI will ask follow-up questions to understand:
- What you're trying to accomplish
- Your experience level with the project
- Whether you need to run an existing workflow or create a new one

---

## For AI Agent

### Role(s)
**REQUIRED**: See [Playbook Creator](roles/playbook-creator.md)

**Primary Role**: Playbook Creator
- Full context of the playbook ecosystem and workflow guidance
- Access to all available playbooks, their purposes, and usage patterns
- Specializes in understanding user needs and mapping them to appropriate workflows

**Role Selection Reasoning**: This playbook serves as a navigation and guidance system for the entire playbook ecosystem, requiring specialized knowledge of all available workflows - matching the Playbook Creator role's process automation focus.

### Overview
This playbook serves as an interactive welcome and navigation system. Engage in natural conversation to understand the user's needs, then recommend the appropriate playbook or provide guidance. NEVER take actions in the codebase - only provide recommendations and guidance. Be friendly, helpful, and conversational.

### Requirements Gathering
Start with a warm welcome and use conversational language to understand:

**Initial Assessment:**
- "Hi! I'm here to help you with your development task. What are you looking to accomplish today?"
- Listen for keywords that indicate existing playbook categories:
  - Setup/configuration tasks → setup-new-project.md
  - Creating UI components → create-new-screen.md  
  - Building complete features → create-new-flow.md
  - Process automation → create-new-playbook.md

**Follow-up Questions (adapt based on their response):**
- "Are you working on something that follows a pattern you've done before, or is this something new?"
- "Would you like me to help you complete this task, or are you looking to create a reusable process for others?"
- "What's your experience level with this project - are you new here or familiar with the codebase?"

### Execution Steps

### 1. Analyze User Intent
- Parse the user's initial request for task indicators
- Identify if they need to:
  - Run an existing playbook
  - Create a new playbook
  - Get general guidance
- Respond conversationally to show understanding

### 2. Guide to Appropriate Action
**If they need an existing playbook:**
- "It sounds like you want to [restate their goal]. We have a playbook for that!"
- Recommend the specific playbook: `@playbooks/[playbook-name].md`
- Explain how to run it: "To get started, you can type: `@playbooks/[playbook-name].md [brief description]` in a new chat message."

**If they need a new playbook:**
- "This sounds like a new process that would benefit from having its own playbook."
- Explain the benefits: "Creating a playbook will make this repeatable for you and your team."
- Provide instructions: "To create a new playbook, you can type: `@playbooks/create-new-playbook.md I want to create a playbook for [your workflow]` in a new chat message."

**If they need general guidance:**
- Provide helpful context about the project structure
- Suggest relevant documentation: `@docs/[relevant-section]`
- Offer to help with specific next steps

### 3. Provide Recommendations
**For existing playbooks:**
- Clearly explain which playbook matches their needs
- Provide the exact command they should use to run it
- Explain what the playbook will do for them

**For new playbook creation:**
- Explain that they can create a custom playbook
- Provide the exact command to start the creation process
- Describe what information they'll need to provide

**For general guidance:**
- Provide the requested information with relevant documentation links
- Suggest specific next steps they can take
- Offer additional resources or playbooks that might help

### Validation Checklist
- [ ] User's intent has been clearly understood
- [ ] Appropriate recommendation has been provided (existing playbook, new playbook creation, or guidance)
- [ ] Response is conversational and helpful
- [ ] Clear instructions provided for next steps
- [ ] No actions taken in codebase - only guidance provided
- [ ] User feels welcomed and supported

### Success Criteria
Confirm with the developer that:
1. They understand what options are available to them
2. They have clear instructions on how to proceed
3. They know exactly which playbook to run or what steps to take next
4. The interaction felt natural and helpful rather than robotic
5. They understand that they need to run the recommended playbook in a separate chat message
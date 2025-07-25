# Quick Start Playbook

## For Developers

### When to Use This Playbook
Use this playbook when you want to quickly get started with the Android Project Template 2025. This is perfect for developers who want to jump right in and start exploring the template structure and features.

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `Please run the quick start playbook.`
4. Amazon Q will guide you through the essential setup steps
5. Once complete, you'll have a working project ready for exploration

### Prerequisites
- Android Studio with Amazon Q plugin installed
- Template repository cloned locally
- Basic familiarity with Android development

### Inputs
Before starting, have the following information ready for the AI Agent:
- **Project exploration goals** (e.g., "Learn the architecture", "Start a new project", "Understand the patterns")
- **Whether you want to run the example** (Yes/No)
- **Preferred learning approach** (e.g., "Show me the code", "Explain the architecture", "Walk through features")

---

## For AI Agent

### Role(s)
**REQUIRED**: See [Mobile Developer](roles/mobile-developer.md)

**Primary Role**: Mobile Developer
- Project orientation and initial setup with comprehensive project context
- Access to build system, project structure, and example implementations
- Handles project building, running examples, and demonstrating architecture patterns

**Role Selection Reasoning**: This playbook requires hands-on interaction with the project including building, running, and explaining code architecture - matching the Mobile Developer role's comprehensive technical capabilities.

### Overview
This playbook provides a quick introduction to the Android Project Template 2025, helping developers understand the structure, run the example, and get oriented with the key features and Amazon Q integration.

### Requirements Gathering
Ask the developer for the following information:
- What are their main goals with this template?
- Do they want to run the example feature to see it in action?
- What's their preferred way to learn about the project structure?
- Are they planning to use this for a new project or just exploring?

### Execution Steps

### 1. Project Overview
- Explain the key features of the template
- Show the project structure and module organization
- Highlight the Amazon Q integration benefits
- Point out the documentation structure in /docs

### 2. Build and Run
- Ensure the project builds successfully
- Run the app to show the example todo/checklist feature
- Demonstrate the Material Design 3 UI components
- Show the navigation structure

### 3. Architecture Walkthrough
- Explain Clean Architecture implementation
- Show MVVM pattern with the example feature
- Demonstrate the Service pattern in the data layer
- Point out dependency injection with Hilt

### 4. Amazon Q Integration Demo
- Show how to use @workspace for context loading
- Demonstrate @docs for architecture guidance
- Explain the pre-configured rules in .amazonq/rules/
- Show example AI-assisted development commands

### 5. Create Your First Playbook
- Explain that creating playbooks is essential for efficient AI-assisted development
- Show how to identify repetitive tasks that would benefit from playbooks
- Emphasize that even one-off tasks benefit from playbooks because they organize communication between user and AI agent
- Demonstrate the create new playbook process
- Emphasize that playbooks make development faster and more consistent for both recurring and one-time tasks

### 6. Next Steps Guidance
- Point to relevant playbooks for specific tasks
- Suggest documentation to read based on their goals
- Recommend starting points for new feature development
- Explain how to use the setup playbook for new projects
- Encourage creating playbooks for both repetitive workflows and complex one-off tasks
- Explain that playbooks improve communication clarity even for single-use tasks

### Validation Checklist
- [ ] Project builds and runs successfully
- [ ] Example feature is working correctly
- [ ] Developer understands the project structure
- [ ] Amazon Q integration is demonstrated
- [ ] Playbook creation process is explained and demonstrated
- [ ] Developer understands the importance of creating custom playbooks
- [ ] Next steps are clearly explained
- [ ] Developer questions are answered

### Success Criteria
Confirm with the developer that:
1. They can build and run the project successfully
2. They understand the overall architecture and patterns
3. They know how to use Amazon Q effectively with this template
4. They understand that creating playbooks is essential for efficient development
5. They can identify tasks that would benefit from custom playbooks
6. They have clear next steps for their specific goals
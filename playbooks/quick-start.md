# Quick Start Playbook

## For Developers

### When to Use This Playbook
Use this playbook when you want to quickly get started with the Android Project Template 2025. This is perfect for developers who want to jump right in and start exploring the template structure and features.

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `@playbooks/quick-start.md I want to quickly get started with this template`
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

### Role
Mobile Developer - Project orientation and initial setup

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

### 5. Next Steps Guidance
- Point to relevant playbooks for specific tasks
- Suggest documentation to read based on their goals
- Recommend starting points for new feature development
- Explain how to use the setup playbook for new projects

### Validation Checklist
- [ ] Project builds and runs successfully
- [ ] Example feature is working correctly
- [ ] Developer understands the project structure
- [ ] Amazon Q integration is demonstrated
- [ ] Next steps are clearly explained
- [ ] Developer questions are answered

### Success Criteria
Confirm with the developer that:
1. They can build and run the project successfully
2. They understand the overall architecture and patterns
3. They know how to use Amazon Q effectively with this template
4. They have clear next steps for their specific goals
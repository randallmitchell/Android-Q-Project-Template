# Setup New Project Playbook

## For Developers

### When to Use This Playbook
Use this playbook immediately after cloning the template repository when you want to create a new project based on this template.

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `@playbooks/setup-new-project.md I want to set up a new project based on this template`
4. Amazon Q will ask you for the required information listed below
5. Once you provide the information, Amazon Q will execute the setup automatically

### Prerequisites
- Android Studio with Amazon Q plugin installed
- Git repository for the new project
- Template cloned or downloaded

### Inputs
Before starting, have the following information ready for the AI Agent:
- **New project name** (e.g., "MyAwesomeApp")
- **Package name** (e.g., "com.yourcompany.yourapp")
- **Company/Organization name**
- **App display name** (name shown to users)
- **Whether to keep or remove** the example feature module
- **Primary and secondary colors** for UI theme
- **Git repository URL** and configuration details
- **Any additional feature modules** you want created initially

---

## For AI Agent

### Role(s)
**REQUIRED**: See [Mobile Developer](roles/mobile-developer.md)

**Primary Role**: Mobile Developer
- Full-stack project setup and configuration with comprehensive project context
- Access to build configuration, package structure, and project templates
- Handles package renaming, module configuration, and project initialization

**Role Selection Reasoning**: This playbook requires complete project knowledge including build systems, package management, module structure, and configuration files - matching the Mobile Developer role's comprehensive project context.

### Overview
This playbook sets up a new Android project based on the ProjectTemplate2025 template. Handle package renaming, configuration updates, and initial project setup.

### Requirements Gathering
Ask the developer for the following information:
- New project name and package name
- Company/Organization name
- App display name (name shown to users)
- Whether to keep or remove the example feature module
- Primary and secondary colors for UI theme
- Git repository URL and configuration details
- Any additional feature modules to create initially

### Execution Steps

### 1. Project Initialization
- Clone the template repository
- Open the project in Android Studio
- Initialize Git repository (if not already done)

### 2. Package Renaming
- Update application ID in build.gradle files
- Rename package directories
- Update package references in source files
- Update imports across the project

### 3. Project Configuration
- Update app name in strings.xml
- Modify rootProject.name in settings.gradle.kts
- Update README.md with project-specific information
- Configure template-config.json
- Update .idea folder configuration files:
  - Rename project in .idea/.name
  - Update module names in .idea/modules.xml
  - Update module paths in .idea/compiler.xml to reflect new project name

### 4. Clean Build
- Rebuild project to verify configuration
- Fix any build errors
- Run initial tests

### 5. Module Configuration
- Keep or remove example feature module based on requirements
- Create initial feature modules as specified by the developer
- Set up additional library modules if required
- Update settings.gradle.kts to include all modules

### 6. Initial Customization
- Update theme colors based on UI specifications
- Configure initial navigation
- Set up custom fonts if specified

### Validation Checklist
- [ ] Project builds successfully
- [ ] All package references are updated
- [ ] App runs on emulator/device
- [ ] Navigation works correctly
- [ ] Example feature functions properly or has been removed
- [ ] All developer requirements have been implemented
- [ ] Git repository is properly configured

### Success Criteria
Confirm with the developer that:
1. The project builds and runs without errors
2. All requested customizations are applied
3. The project structure matches their requirements
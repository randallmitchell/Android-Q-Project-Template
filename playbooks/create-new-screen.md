# Playbook: Create New Screen

## For Developers

### When to Use This Playbook
Use this playbook when you want to add a new screen to an existing navigation flow. Creates placeholder UI and basic navigation setup for future development.

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `@playbooks/create-new-screen.md I want to add a new screen`
4. Amazon Q will ask guided questions to gather requirements
5. Once you provide the information, Amazon Q will execute the steps automatically

### Prerequisites
- Target navigation flow must exist
- Feature module structure is in place
- Navigation component is configured

### Inputs
Amazon Q will gather the following information through guided questions:
- Screen name and purpose
- Target navigation flow
- UI components and layout
- Data requirements
- Navigation parameters

---

## For AI Agent

### Role(s)
**REQUIRED**: See [Mobile Developer](roles/mobile-developer.md)

**Primary Role**: Mobile Developer
- Full-stack feature implementation following Clean Architecture
- Access to complete project context, architecture patterns, and UI components
- Handles Compose UI creation, ViewModel setup, and navigation integration

**Role Selection Reasoning**: This playbook requires comprehensive Android development context including UI creation, state management, navigation setup, and dependency injection - matching the Mobile Developer role's full-stack responsibilities.

**Context Loading Strategy**: Automatically loads full project context, architecture patterns, UI components, and development standards for comprehensive screen creation.

## Overview
Creates an empty Compose screen structure and integrates it into an existing navigation flow. Creates placeholder UI and basic navigation setup for future development.

## Prerequisites
- Target navigation flow must exist
- Feature module structure is in place
- Navigation component is configured

## Requirements Gathering
Ask the developer for the following information:
- Screen name and purpose
- Target navigation flow
- UI components and layout
- Data requirements
- Navigation parameters

## Execution Steps

### 1. Create Empty Screen Composable
- Generate placeholder Composable function
- Add basic "Coming Soon" or placeholder UI
- Follow project naming conventions

### 2. Create Basic ViewModel
- Generate ViewModel stub with minimal state
- Add placeholder UI state class
- Set up Hilt injection

### 3. Add to Navigation
- Add screen route to navigation graph
- Configure navigation arguments (if specified)
- Add navigation call from entry point

### 4. Register Dependencies
- Add ViewModel to Hilt module
- Ensure all dependencies are properly injected
- Verify module builds successfully

## Validation Checklist
- [ ] Empty screen displays placeholder content
- [ ] Navigation to screen works from entry point
- [ ] Navigation back works correctly
- [ ] ViewModel is properly injected
- [ ] No compilation errors
- [ ] Code follows project naming conventions


# Playbook: Create New Flow

## For Developers

### When to Use This Playbook
Use this playbook when you want to create a new navigation flow in the app. Creates entry points but leaves screens empty for future development.

### How to Run This Playbook
1. Open the project in Android Studio
2. Open Amazon Q Chat panel (click the Amazon Q icon in the toolbar)
3. Type: `Please run the create new flow playbook.`
4. Amazon Q will ask guided questions to gather requirements
5. Once you provide the information, Amazon Q will execute the steps automatically

### Prerequisites
- Main application navigation structure exists
- Project follows feature module architecture
- Navigation component is configured

### Inputs
Amazon Q will gather the following information through guided questions:
- Flow name and purpose
- Feature module structure
- Entry and exit points
- Screen hierarchy
- Navigation patterns

---

## For AI Agent

### Role(s)
**REQUIRED**: See [Mobile Developer](roles/mobile-developer.md)

**Primary Role**: Mobile Developer
- Full-stack feature implementation with comprehensive project context
- Access to module structure, Gradle configuration, navigation architecture
- Handles feature module creation, navigation setup, and dependency management

**Role Selection Reasoning**: This playbook requires extensive Android project knowledge including module creation, Gradle configuration, navigation architecture, and feature integration - matching the Mobile Developer role's full-stack capabilities.

**Context Loading Strategy**: Automatically loads complete project structure, module architecture, Gradle configuration, and navigation patterns for comprehensive flow creation.

## Overview
Creates an empty navigation flow structure with feature module scaffolding and basic navigation setup. Creates entry points but leaves screens empty for future development.

## Prerequisites
- Main application navigation structure exists
- Project follows feature module architecture
- Navigation component is configured

## Requirements Gathering
Ask the developer for the following information:
- Flow name and purpose
- Feature module structure
- Entry and exit points
- Screen hierarchy
- Navigation patterns

## Execution Steps

### 1. Create Feature Module Structure
- Generate feature module with basic Gradle setup
- Add minimal dependencies (Compose, Hilt, Navigation)
- Create package structure following project conventions

### 2. Create Empty Screens
- Generate placeholder Composable functions
- Add basic "Coming Soon" or placeholder UI
- Set up minimal ViewModel stubs

### 3. Setup Navigation Graph
- Create navigation graph with screen destinations
- Configure navigation arguments (empty implementations)
- Add navigation routes

### 4. Add Entry Points
- Update main navigation to include flow entry
- Add navigation calls from specified entry points
- Configure basic deep link structure

### 5. Register Dependencies
- Add Hilt module registration
- Update app module to include new feature
- Ensure module builds successfully

## Validation Checklist
- [ ] Feature module builds successfully
- [ ] Navigation to flow entry point works
- [ ] Empty screens display placeholder content
- [ ] Navigation between empty screens works
- [ ] Entry points from main app navigate correctly
- [ ] Module structure follows project conventions
- [ ] No compilation errors


# Playbook: Create New Screen

## Overview
Creates an empty Compose screen structure and integrates it into an existing navigation flow. Creates placeholder UI and basic navigation setup for future development.

## Prerequisites
- Target navigation flow must exist
- Feature module structure is in place
- Navigation component is configured

## Requirements
Use [Create New Screen Playbook Requirements Document (PRD) Template](templates/create-new-screen-prd.md) to gather:
- Screen name and purpose
- Target navigation flow
- UI components and layout
- Data requirements
- Navigation parameters

## Steps

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

## Validation
- [ ] Empty screen displays placeholder content
- [ ] Navigation to screen works from entry point
- [ ] Navigation back works correctly
- [ ] ViewModel is properly injected
- [ ] No compilation errors
- [ ] Code follows project naming conventions

## Template
[Create New Screen Playbook Requirements Document (PRD) Template](templates/create-new-screen-prd.md)
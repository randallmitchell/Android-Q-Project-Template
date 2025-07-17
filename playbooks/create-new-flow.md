# Playbook: Create New Flow

## Overview
Creates an empty navigation flow structure with feature module scaffolding and basic navigation setup. Creates entry points but leaves screens empty for future development.

## Prerequisites
- Main application navigation structure exists
- Project follows feature module architecture
- Navigation component is configured

## Requirements
Use [Create New Flow Playbook Requirements Document (PRD) Template](templates/create-new-flow-prd.md) to gather:
- Flow name and purpose
- Feature module structure
- Entry and exit points
- Screen hierarchy
- Navigation patterns

## Steps

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

## Validation
- [ ] Feature module builds successfully
- [ ] Navigation to flow entry point works
- [ ] Empty screens display placeholder content
- [ ] Navigation between empty screens works
- [ ] Entry points from main app navigate correctly
- [ ] Module structure follows project conventions
- [ ] No compilation errors

## Template
[Create New Flow Playbook Requirements Document (PRD) Template](templates/create-new-flow-prd.md)
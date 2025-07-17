# Playbook Requirements Document (PRD)
## Create New Flow

### Project Context
- **Flow Integration Point**: [e.g., "Main bottom navigation", "Settings menu", "Onboarding"]
- **Module Name**: [e.g., "feature-auth", "feature-profile", "feature-settings"]
- **App Architecture**: [Confirm Clean Architecture with MVVM]

### Flow Requirements
- **Flow Name**: [e.g., "Authentication", "User Profile", "Settings"]
- **Flow Purpose**: [Brief description of what this flow will eventually do]
- **Planned User Journey**: [High-level flow through screens - for future reference]
- **Flow Type**: [e.g., "Linear flow", "Hub and spoke", "Tabbed flow"]
- **Placeholder Content**: [What empty screens should display]

### Screen Hierarchy
- **Entry Screen**: [First screen - will be created empty]
- **Planned Screens**: [List screens to create as empty placeholders]
- **Navigation Flow**: [Basic navigation between empty screens]
- **Exit Points**: [How users leave this flow]

### Navigation Specifications
- **Navigation Pattern**: [e.g., "Stack navigation", "Tab navigation", "Drawer navigation"]
- **Entry Points**: [How users access this flow from main app]
- **Deep Link Patterns**: [URL patterns for deep linking]
- **Navigation Arguments**: [Data passed between screens]
- **Back Stack Behavior**: [How back navigation should work]

### Feature Module Structure
- **Package Structure**: [How to organize the empty module]
- **Empty ViewModels**: [Basic ViewModel stubs for each screen]
- **Navigation Setup**: [Navigation graph structure]
- **Future Architecture**: [Notes on planned domain/data layers]

### Data Requirements
- **Initial State**: [What empty screens should show]
- **Navigation Arguments**: [Data passed between screens]
- **Future Data Needs**: [Planned data sources and models]

### Integration Requirements
- **Main App Integration**: [How to add entry points to main navigation]
- **Module Dependencies**: [Basic dependencies needed for empty module]
- **Shared Resources**: [Minimal resources needed for placeholder UI]

### Technical Specifications
- **Build Requirements**: [Module must compile successfully]
- **Navigation Requirements**: [Basic navigation must work]
- **Future Technical Needs**: [Notes for future development]

### UI/UX Requirements
- **Design System**: [Material Design 3 compliance]
- **Accessibility**: [Screen reader, large text support]
- **Responsive Design**: [Different screen sizes]
- **Animation Requirements**: [Transitions between screens]

### Testing Strategy
- **Basic Tests**: [Navigation and compilation tests]
- **Future Testing**: [Planned testing strategy for full implementation]

### Acceptance Criteria
- [ ] Feature module builds successfully
- [ ] Empty screens display placeholder content
- [ ] Navigation between empty screens works
- [ ] Entry points from main app navigate to flow
- [ ] Navigation back to main app works
- [ ] Module follows project structure conventions
- [ ] All ViewModels are properly set up with Hilt
- [ ] Ready for future feature development
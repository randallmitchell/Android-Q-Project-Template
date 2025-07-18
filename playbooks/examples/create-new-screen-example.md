# Example: Create New Screen Playbook Usage
## Todo Detail Screen

### Chat Interaction Example

**Developer:**
```
@playbooks/create-new-screen.md I want to add a todo detail screen
```

**Amazon Q Response:**
```
I'll help you create a new screen. Let me gather the required information:

1. What should the screen be called?
2. Which navigation flow should it be added to?
3. What navigation arguments does it need?
4. What placeholder content should it display?
5. How should users navigate to this screen?
```

**Developer Answers:**
```
1. TodoDetailScreen
2. Todo feature flow (feature-example module)
3. todoId: String parameter
4. "Todo Detail - Coming Soon" with the todo ID displayed
5. From TodoScreen when a todo item is clicked
```

**Result:**
Amazon Q creates:
- TodoDetailScreen composable with placeholder UI
- TodoDetailViewModel with basic state
- Navigation route with todoId parameter
- Integration with existing TodoScreen navigation
- Proper Hilt setup and project structure compliance
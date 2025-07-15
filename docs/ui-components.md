# UI Components Documentation

## Custom Components Library

The `library-ui` module contains reusable UI components following Material Design principles.

### TodoCard

A specialized card component for displaying todo items with interactive checkbox functionality.

#### Usage
```kotlin
TodoCard(
    title = "Complete project setup",
    description = "Configure all necessary dependencies and modules",
    isCompleted = false,
    onToggleComplete = { /* Handle completion toggle */ },
    onClick = { /* Handle card click */ }
)
```

#### Features
- Material Design 3 styling
- Interactive checkbox with proper animations
- Text strikethrough for completed items
- Proper color theming for different states
- Accessibility support

#### Design Specifications
- Follows 8dp spacing grid
- Uses Material Theme typography scale
- Implements proper elevation and shadows
- Supports both light and dark themes

### Implementation Example

```kotlin
@Composable
fun TodoCard(
    title: String,
    description: String,
    isCompleted: Boolean,
    onToggleComplete: () -> Unit,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        onClick = onClick,
        modifier = modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Checkbox(
                checked = isCompleted,
                onCheckedChange = { onToggleComplete() }
            )
            
            Spacer(modifier = Modifier.width(12.dp))
            
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium,
                    textDecoration = if (isCompleted) TextDecoration.LineThrough else null
                )
                
                if (description.isNotBlank()) {
                    Text(
                        text = description,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        }
    }
}
```

## Adding New Components

When creating new UI components:

1. Place them in the `library-ui` module
2. Follow Material Design guidelines
3. Support both light and dark themes
4. Include accessibility features
5. Add comprehensive documentation
6. Write unit tests for component behavior
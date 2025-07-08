# Template Setup Guide

## Quick Setup Steps

### 1. Clone and Rename
```bash
git clone <template-repo-url> YourProjectName
cd YourProjectName
```

### 2. Update Package Names
Replace all instances of `com.methodsignature.projecttemplate2025` with your package name:

**Files to update:**
- `app/build.gradle.kts` - applicationId and namespace
- `app/src/main/AndroidManifest.xml` - package attribute
- All Kotlin files - package declarations
- `app/src/main/res/values/strings.xml` - app_name

### 3. Update Project Configuration
**settings.gradle.kts:**
```kotlin
rootProject.name = "Your Project Name"
```

**app/src/main/res/values/strings.xml:**
```xml
<string name="app_name">Your App Name</string>
```

### 4. Configure Amazon Q
The template is pre-configured for Amazon Q integration:
- Rules are in `.amazonq/rules/`
- Documentation is in `docs/`
- Use `@workspace` to load project context

### 5. Add Your Features
Follow the module structure in `docs/gradle/README.md`:
```bash
# Create new feature module
mkdir feature-yourfeature
# Copy structure from template examples
```

## Automated Setup Script

For faster setup, you can create a setup script:

```bash
#!/bin/bash
# setup.sh

echo "Enter your package name (e.g., com.yourcompany.yourapp):"
read PACKAGE_NAME

echo "Enter your app name:"
read APP_NAME

echo "Enter your project name:"
read PROJECT_NAME

# Replace package names
find . -name "*.kt" -type f -exec sed -i "s/com.methodsignature.projecttemplate2025/$PACKAGE_NAME/g" {} +
find . -name "*.kts" -type f -exec sed -i "s/com.methodsignature.projecttemplate2025/$PACKAGE_NAME/g" {} +
find . -name "*.xml" -type f -exec sed -i "s/com.methodsignature.projecttemplate2025/$PACKAGE_NAME/g" {} +

# Replace app name
sed -i "s/Project Template 2025/$APP_NAME/g" app/src/main/res/values/strings.xml
sed -i "s/Project Template 2025/$PROJECT_NAME/g" settings.gradle.kts

# Replace class names
find . -name "*.kt" -type f -exec sed -i "s/ProjectTemplate2025/$PROJECT_NAME/g" {} +

echo "Template setup complete!"
echo "Next steps:"
echo "1. Sync project with Gradle files"
echo "2. Update application icon and branding"
echo "3. Configure your specific features"
echo "4. Review Amazon Q integration in docs/amazon-q-integration.md"
```

## Verification Checklist

After setup, verify:
- [ ] Project builds successfully
- [ ] Package names are updated everywhere
- [ ] App name displays correctly
- [ ] Amazon Q loads project context properly
- [ ] Documentation is accessible and relevant
- [ ] All placeholder values are replaced

## Next Steps

1. **Review Architecture**: Read `docs/architecture/README.md`
2. **Understand Patterns**: Study `docs/patterns/README.md`
3. **Plan Modules**: Follow `docs/gradle/README.md`
4. **Configure Amazon Q**: Use `docs/amazon-q-integration.md`
5. **Start Development**: Create your first feature module

## Support

For template-related questions:
- Check documentation in `docs/`
- Use Amazon Q with `@workspace` context
- Follow established patterns and conventions
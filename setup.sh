#!/bin/bash

echo "🚀 Android Project Template 2025 Setup"
echo "======================================"

echo "Enter your package name (e.g., com.yourcompany.yourapp):"
read PACKAGE_NAME

echo "Enter your app name:"
read APP_NAME

echo "Enter your project name (no spaces):"
read PROJECT_NAME

echo ""
echo "🔄 Updating package names..."
find . -name "*.kt" -type f -exec sed -i "s/com.methodsignature.projecttemplate2025/$PACKAGE_NAME/g" {} +
find . -name "*.kts" -type f -exec sed -i "s/com.methodsignature.projecttemplate2025/$PACKAGE_NAME/g" {} +
find . -name "*.xml" -type f -exec sed -i "s/com.methodsignature.projecttemplate2025/$PACKAGE_NAME/g" {} +

echo "📱 Updating app name..."
sed -i "s/Project Template 2025/$APP_NAME/g" app/src/main/res/values/strings.xml
sed -i "s/Project Template 2025/$PROJECT_NAME/g" settings.gradle.kts

echo "🏗️ Updating class names..."
find . -name "*.kt" -type f -exec sed -i "s/ProjectTemplate2025/$PROJECT_NAME/g" {} +

echo ""
echo "✅ Template setup complete!"
echo ""
echo "Next steps:"
echo "1. Open project in Android Studio"
echo "2. Sync Gradle files"
echo "3. Update application icon and branding"
echo "4. Configure your specific features"
echo "5. Review Amazon Q integration in docs/amazon-q-integration.md"
echo ""
echo "🤖 Use Amazon Q with @workspace for contextual assistance!"
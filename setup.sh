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
echo "$APP_NAME" > .idea/.name

echo "🏗️ Updating class names..."
find . -name "*.kt" -type f -exec sed -i "s/ProjectTemplate2025/$PROJECT_NAME/g" {} +

echo "📁 Renaming package directories..."
# Convert package name to directory path
PACKAGE_PATH=$(echo $PACKAGE_NAME | tr '.' '/')
OLD_PACKAGE_PATH="com/methodsignature/projecttemplate2025"

# Rename directories in app module
if [ -d "app/src/main/java/$OLD_PACKAGE_PATH" ]; then
    mkdir -p "app/src/main/java/$PACKAGE_PATH"
    mv app/src/main/java/$OLD_PACKAGE_PATH/* "app/src/main/java/$PACKAGE_PATH/"
    rm -rf app/src/main/java/com/methodsignature
fi

if [ -d "app/src/test/java/$OLD_PACKAGE_PATH" ]; then
    mkdir -p "app/src/test/java/$PACKAGE_PATH"
    mv app/src/test/java/$OLD_PACKAGE_PATH/* "app/src/test/java/$PACKAGE_PATH/"
    rm -rf app/src/test/java/com/methodsignature
fi

if [ -d "app/src/androidTest/java/$OLD_PACKAGE_PATH" ]; then
    mkdir -p "app/src/androidTest/java/$PACKAGE_PATH"
    mv app/src/androidTest/java/$OLD_PACKAGE_PATH/* "app/src/androidTest/java/$PACKAGE_PATH/"
    rm -rf app/src/androidTest/java/com/methodsignature
fi

# Rename directories in feature-example module
if [ -d "feature-example/src/main/java/$OLD_PACKAGE_PATH" ]; then
    mkdir -p "feature-example/src/main/java/$PACKAGE_PATH"
    mv feature-example/src/main/java/$OLD_PACKAGE_PATH/* "feature-example/src/main/java/$PACKAGE_PATH/"
    rm -rf feature-example/src/main/java/com/methodsignature
fi

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
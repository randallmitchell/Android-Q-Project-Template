@echo off
setlocal enabledelayedexpansion

echo 🚀 Android Project Template 2025 Setup
echo ======================================

set /p PACKAGE_NAME="Enter your package name (e.g., com.yourcompany.yourapp): "
set /p APP_NAME="Enter your app name: "
set /p PROJECT_NAME="Enter your project name (no spaces): "

echo.
echo 🔄 Updating package names...
for /r %%f in (*.kt) do (
    powershell -Command "(Get-Content '%%f') -replace 'com\.methodsignature\.projecttemplate2025', '%PACKAGE_NAME%' | Set-Content '%%f'"
)
for /r %%f in (*.kts) do (
    powershell -Command "(Get-Content '%%f') -replace 'com\.methodsignature\.projecttemplate2025', '%PACKAGE_NAME%' | Set-Content '%%f'"
)
for /r %%f in (*.xml) do (
    powershell -Command "(Get-Content '%%f') -replace 'com\.methodsignature\.projecttemplate2025', '%PACKAGE_NAME%' | Set-Content '%%f'"
)

echo 📱 Updating app name...
powershell -Command "(Get-Content 'app\src\main\res\values\strings.xml') -replace 'Project Template 2025', '%APP_NAME%' | Set-Content 'app\src\main\res\values\strings.xml'"
powershell -Command "(Get-Content 'settings.gradle.kts') -replace 'Project Template 2025', '%PROJECT_NAME%' | Set-Content 'settings.gradle.kts'"
echo %APP_NAME% > .idea\.name

echo 🏗️ Updating class names...
for /r %%f in (*.kt) do (
    powershell -Command "(Get-Content '%%f') -replace 'ProjectTemplate2025', '%PROJECT_NAME%' | Set-Content '%%f'"
)

echo 📁 Renaming package directories...
set PACKAGE_PATH=%PACKAGE_NAME:.=\%
set OLD_PACKAGE_PATH=com\methodsignature\projecttemplate2025

REM Rename directories in app module
if exist "app\src\main\java\%OLD_PACKAGE_PATH%" (
    echo Creating directory: app\src\main\java\%PACKAGE_PATH%
    mkdir "app\src\main\java\%PACKAGE_PATH%" 2>nul || (echo ❌ Failed to create directory: app\src\main\java\%PACKAGE_PATH% & exit /b 1)
    echo Moving files from app\src\main\java\%OLD_PACKAGE_PATH% to app\src\main\java\%PACKAGE_PATH%
    move "app\src\main\java\%OLD_PACKAGE_PATH%\*" "app\src\main\java\%PACKAGE_PATH%\" || (echo ❌ Failed to move files from app\src\main\java\%OLD_PACKAGE_PATH% & exit /b 1)
    rmdir /s /q "app\src\main\java\com\methodsignature"
)

if exist "app\src\test\java\%OLD_PACKAGE_PATH%" (
    echo Creating directory: app\src\test\java\%PACKAGE_PATH%
    mkdir "app\src\test\java\%PACKAGE_PATH%" 2>nul || (echo ❌ Failed to create directory: app\src\test\java\%PACKAGE_PATH% & exit /b 1)
    echo Moving files from app\src\test\java\%OLD_PACKAGE_PATH% to app\src\test\java\%PACKAGE_PATH%
    move "app\src\test\java\%OLD_PACKAGE_PATH%\*" "app\src\test\java\%PACKAGE_PATH%\" || (echo ❌ Failed to move files from app\src\test\java\%OLD_PACKAGE_PATH% & exit /b 1)
    rmdir /s /q "app\src\test\java\com\methodsignature"
)

if exist "app\src\androidTest\java\%OLD_PACKAGE_PATH%" (
    echo Creating directory: app\src\androidTest\java\%PACKAGE_PATH%
    mkdir "app\src\androidTest\java\%PACKAGE_PATH%" 2>nul || (echo ❌ Failed to create directory: app\src\androidTest\java\%PACKAGE_PATH% & exit /b 1)
    echo Moving files from app\src\androidTest\java\%OLD_PACKAGE_PATH% to app\src\androidTest\java\%PACKAGE_PATH%
    move "app\src\androidTest\java\%OLD_PACKAGE_PATH%\*" "app\src\androidTest\java\%PACKAGE_PATH%\" || (echo ❌ Failed to move files from app\src\androidTest\java\%OLD_PACKAGE_PATH% & exit /b 1)
    rmdir /s /q "app\src\androidTest\java\com\methodsignature"
)

REM Rename directories in feature-example module
if exist "feature-example\src\main\java\%OLD_PACKAGE_PATH%" (
    echo Creating directory: feature-example\src\main\java\%PACKAGE_PATH%
    mkdir "feature-example\src\main\java\%PACKAGE_PATH%" 2>nul || (echo ❌ Failed to create directory: feature-example\src\main\java\%PACKAGE_PATH% & exit /b 1)
    echo Moving files from feature-example\src\main\java\%OLD_PACKAGE_PATH% to feature-example\src\main\java\%PACKAGE_PATH%
    move "feature-example\src\main\java\%OLD_PACKAGE_PATH%\*" "feature-example\src\main\java\%PACKAGE_PATH%\" || (echo ❌ Failed to move files from feature-example\src\main\java\%OLD_PACKAGE_PATH% & exit /b 1)
    rmdir /s /q "feature-example\src\main\java\com\methodsignature"
)

echo.
echo ✅ Template setup complete!
echo.
echo Next steps:
echo 1. Open project in Android Studio
echo 2. Sync Gradle files
echo 3. Update application icon and branding
echo 4. Configure your specific features
echo 5. Review Amazon Q integration in docs/amazon-q-integration.md
echo.
echo 🤖 Use Amazon Q with @workspace for contextual assistance!
pause
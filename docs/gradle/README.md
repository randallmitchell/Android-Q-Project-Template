# Gradle Module Requirements

## Module Structure Guidelines

### Library Modules

#### 1. app module
- Main application module
- Contains Application class and main activity
- Depends on all feature modules
- Handles dependency injection setup

```kotlin
// app/build.gradle.kts
plugins {
    alias(libs.plugins.androidApplication)
    alias(libs.plugins.jetbrainsKotlinAndroid)
    alias(libs.plugins.hilt)
    kotlin("kapt")
}

dependencies {
    implementation(project(":library-ui"))
    implementation(project(":library-data"))
    implementation(project(":library-domain"))
    implementation(project(":feature-auth"))
    implementation(project(":feature-dashboard"))
    
    implementation(libs.hilt.android)
    kapt(libs.hilt.compiler)
}
```

#### 2. library-ui module
- Shared UI components and themes
- Compose utilities and common screens
- Design system implementation

```kotlin
// library-ui/build.gradle.kts
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.jetbrainsKotlinAndroid)
}

dependencies {
    api(platform(libs.androidx.compose.bom))
    api(libs.androidx.ui)
    api(libs.androidx.ui.graphics)
    api(libs.androidx.ui.tooling.preview)
    api(libs.androidx.material3)
    api(libs.androidx.navigation.compose)
}
```

#### 3. library-data module
- Service implementations
- Database and network setup

```kotlin
// library-data/build.gradle.kts
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.jetbrainsKotlinAndroid)
    alias(libs.plugins.hilt)
    kotlin("kapt")
}

dependencies {
    implementation(project(":library-domain"))
    
    implementation(libs.retrofit)
    implementation(libs.room.runtime)
    implementation(libs.room.ktx)
    kapt(libs.room.compiler)
    
    implementation(libs.hilt.android)
    kapt(libs.hilt.compiler)
}
```

#### 4. library-domain module
- Pure Kotlin module (no Android dependencies)
- Domain models and service interfaces
- Use cases and business logic

```kotlin
// library-domain/build.gradle.kts
plugins {
    id("java-library")
    alias(libs.plugins.jetbrainsKotlinJvm)
}

dependencies {
    implementation(libs.kotlinx.coroutines.core)
    implementation(libs.javax.inject)
}
```

### Feature Modules

#### Feature Module Template
Each feature should follow this structure:

```kotlin
// feature-[name]/build.gradle.kts
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.jetbrainsKotlinAndroid)
    alias(libs.plugins.hilt)
    kotlin("kapt")
}

dependencies {
    implementation(project(":library-ui"))
    implementation(project(":library-domain"))
    
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.hilt.android)
    implementation(libs.hilt.navigation.compose)
    kapt(libs.hilt.compiler)
}
```

#### Feature Module Structure
```
feature-[name]/
├── src/main/java/com/[package]/feature/[name]/
│   ├── presentation/
│   │   ├── [Name]Screen.kt
│   │   ├── [Name]ViewModel.kt
│   │   ├── [Name]UiState.kt
│   │   └── components/
│   ├── domain/
│   │   ├── usecase/
│   │   └── model/
│   └── di/
│       └── [Name]Module.kt
```

## Module Dependencies Rules

### Dependency Direction
```
app
├── feature-* modules
│   ├── library-ui
│   └── library-domain
├── library-data
│   └── library-domain
└── library-ui
```

### Prohibited Dependencies
- Library modules cannot depend on feature modules
- Feature modules cannot depend on other feature modules
- library-domain cannot depend on Android framework

## Version Catalog Integration

### libs.versions.toml Structure
```toml
[versions]
# Core versions
kotlin = "1.9.0"
compose-bom = "2023.08.00"
hilt = "2.48"

# Feature versions
retrofit = "2.9.0"
room = "2.5.0"

[libraries]
# Hilt
hilt-android = { group = "com.google.dagger", name = "hilt-android", version.ref = "hilt" }
hilt-compiler = { group = "com.google.dagger", name = "hilt-compiler", version.ref = "hilt" }
hilt-navigation-compose = { group = "androidx.hilt", name = "hilt-navigation-compose", version = "1.0.0" }

# Networking
retrofit = { group = "com.squareup.retrofit2", name = "retrofit", version.ref = "retrofit" }
retrofit-gson = { group = "com.squareup.retrofit2", name = "converter-gson", version.ref = "retrofit" }

# Database
room-runtime = { group = "androidx.room", name = "room-runtime", version.ref = "room" }
room-compiler = { group = "androidx.room", name = "room-compiler", version.ref = "room" }
room-ktx = { group = "androidx.room", name = "room-ktx", version.ref = "room" }

[plugins]
hilt = { id = "com.google.dagger.hilt.android", version.ref = "hilt" }
```

## Build Configuration Standards

### Common Build Features
```kotlin
android {
    compileSdk = 34
    
    defaultConfig {
        minSdk = 24
        targetSdk = 34
    }
    
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    
    kotlinOptions {
        jvmTarget = "17"
    }
    
    buildFeatures {
        compose = true
    }
    
    composeOptions {
        kotlinCompilerExtensionVersion = "1.5.1"
    }
}
```

### ProGuard Rules
Each module should include appropriate ProGuard rules for release builds.
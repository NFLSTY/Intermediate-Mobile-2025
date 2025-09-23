# serene

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Solving Bugs/Errors

- NDK version not found --> use the provided version by Android Studio or use the integrated Flutter NDK package
- Gemini not responding (error) --> make sure there is no typo in the model name (missed dot), or check if the API is still valid
- App only showing blank background --> remove the gradient background as it covers the whole content below it
- App crashed --> check if there is a wrong variable name in a page (difers from main.dart)
- App failed to build --> check if Gradle, Java, and NDK support the current Flutter version
- Many error lines about cache --> make sure to place the Pub cache and Flutter project in the same directory*

*Refers to: https://dart.dev/tools/pub/environment-variables
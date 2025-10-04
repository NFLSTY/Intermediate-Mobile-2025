# serene

A new Flutter project.

## References

- https://medium.com/@difadlyaulhaq2/building-ai-powered-flutter-app-step-by-step-tutorial-5ad5f4810049
- https://github.com/difadlyaulhaq/serene.git
- https://ai.google.dev/gemini-api/docs
- https://dart.dev/docs

## Solving Bugs/Errors

- NDK version not found --> use the provided version by Android Studio or use the integrated Flutter NDK package
- Gemini not responding (error) --> make sure there is no typo in the model name (missed dot), or check if the API is still valid
- App only showing blank background --> remove the gradient background as it covers the whole content below it
- App crashed --> check if there is a wrong variable name in a page (difers from main.dart)
- App failed to build --> check if Gradle, Java, and NDK support the current Flutter version
- Many error lines about cache --> make sure to place the Pub cache and Flutter project in the same directory*

*Refers to: https://dart.dev/tools/pub/environment-variables

## Notes

September 29, 2025
The following Gemini 1.5 models are now deprecated:
- gemini-1.5-pro
- gemini-1.5-flash-8b
- gemini-1.5-flash
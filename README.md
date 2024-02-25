# Jetflix Mobile Application

## Prerequisites

Before running the Jetflix mobile application, please make sure you have the following prerequisites installed and configured:

- [Android Studio](https://developer.android.com/studio): Install Android Studio to set up the Android development environment.
- [Android Emulator](https://developer.android.com/studio/run/emulator): Set up and configure an Android emulator to run the Jetflix application.
- [Appium](http://appium.io/): Install Appium to automate mobile application testing.
- [Appium Inspector](http://appium.io/docs/en/writing-running-appium/inspector/index.html): Set up and configure Appium Inspector for inspecting mobile app elements.
- Set the necessary environment variables for Android Studio, emulator, Appium, and Appium Inspector.

## Running the Application

To run the Jetflix mobile application, follow these steps:

1. Start the Appium server.
2. Launch the Android emulator.
3. Open the Jetflix project in Android Studio.
4. Build and run the Jetflix application on the emulator.

Please ensure that both the Appium server and the Android emulator are enabled and running before running the Jetflix application.

## License

This project is licensed under the [MIT License](LICENSE).
# Jetflix Mobile Automation Project

This project is aimed at automating the testing of the Jetflix mobile application using Robot Framework.

## Prerequisites

Before running the automation tests, make sure you have the following prerequisites installed and configured:

- [Android Studio](https://developer.android.com/studio) - Install Android Studio for Android development.
- Emulator - Set up an Android emulator for running the Jetflix application.
- [Appium](http://appium.io/) - Install Appium for mobile automation testing.
- Inspector - Set up the Appium Inspector for inspecting mobile elements.

Make sure to set the necessary environment variables for Android Studio, emulator, Appium, and Inspector.

## Running the Tests

To run the automation tests, follow these steps:

1. Start the Appium server.
2. Launch the Android emulator.
3. Execute the Robot Framework test suite. 
    ex: robot -d Logs -i <tag> Tests/
```bash

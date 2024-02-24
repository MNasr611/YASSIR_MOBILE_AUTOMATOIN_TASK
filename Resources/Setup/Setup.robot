*** Settings ***
Library    AppiumLibrary

*** Variables ***
${DEVICE_NAME}    Android Emulator
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    10.0
${APP_PACKAGE}    com.example.app
${APP_ACTIVITY}    com.example.app.MainActivity

*** Test Cases ***
Connect to Device and Add Capabilities
    Open Application    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    # Add more test steps here

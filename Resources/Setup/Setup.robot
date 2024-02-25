*** Settings ***
Resource    ../Commons/Commons.robot





*** Keywords ***
Connect to Device and Add Capabilities

    Open Application    
    ...    remote_url=${APPIUM_SERVER}    
    ...    automationName=${AUTOMATION_NAME}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${EXECDIR}/${ANDROID_APP}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}
    ...    avd=${DEVICE_NAME}
    ...    avdLaunchTimeout=6000000
    ...    timeout=5m
    # ...    avd=${DEVICE_NAME}
    ...    adbExecTimeout=6000000
    Set Appium Timeout    ${APPIUM_TIMEOUT}    
    # Add more test steps here

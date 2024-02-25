*** Settings ***
Resource    ../Commons/Commons.robot





*** Keywords ***
Connect to Device and Add Capabilities
    Log To Console    Starting Emulator And Open App !!!

    # ${args}    Create Dictionary

    #     Set To Dictionary    ${args}    -netdelay    lte

    Open Application    
    ...    remote_url=${APPIUM_SERVER}:${APPIUM_PORT}/wd/hub    
    ...    automationName=${AUTOMATION_NAME}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${EXECDIR}/${ANDROID_APP}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}
    ...    avd=${DEVICE_NAME}
    ...    avdLaunchTimeout=60000
    ...    newCommandTimeout=60000
    ...    adbExecTimeout=60000
    # ...    setAvdArgs=${args}
    # ...    networkSpeed=lte
    Set Appium Timeout    ${APPIUM_TIMEOUT}  



Close Emulator
    Run Process    ${KILL_ADB}    shell=True


Start Appium Server 
    Log To Console    Starting Appium Server!!!
    # Start the Appium server
    ${service}    Start Appium    ${APPIUM_SERVER}    ${APPIUM_PORT}    
    Set Global Variable    ${AppiumService}    ${service}
   
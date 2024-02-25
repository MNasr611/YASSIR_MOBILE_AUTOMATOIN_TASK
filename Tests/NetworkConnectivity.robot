
    

*** Settings ***
Resource    ../Resources/Commons/Commons.robot
Suite Setup    Run Keywords
...    Start Appium Server
...    AND
...    Connect to Device and Add Capabilities
Suite Teardown    Run Keywords    
...    Close Application
...    AND    
...    Close Connection
...    AND
...    Close Emulator
*** Test Cases ***


TestCase <ID2>
    [Tags]    testNetwork
    [Documentation]    Calculate Time Taken To Load Pages Over Different Network Types
    [Setup]    Enable Wifi
    Validate That Landing Page Opened
    Check Movie Details Load Time
    Back From Movie Details
    Validate That Landing Page Opened
    Close Wifi
    Enable Data
    # Change Network Type    4g
    Check Movie Details Load Time


    



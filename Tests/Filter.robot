
    

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
# ...    AND
# ...    Close Emulator
...    AND
...    Stop Appium    ${AppiumService}
*** Test Cases ***
TestCase <ID1>
    [Tags]    testFilter
    [Documentation]    Validate Filter With Release Date Functionality
    Validate That Landing Page Opened
    Get All Release Dates
    Click Filter
    Filter With    DATE 
    Close Filter
    Get First Release Date
    Validate That Date After Filter Is Greater

    ## for loop to get all dates 
    ## filter with date  
    ## get first date and make sure it is not in the first 10 dates in the first list before filter and the first one in the list does not match this date


    



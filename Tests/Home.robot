
    

*** Settings ***
Resource    ../Resources/Commons/Commons.robot
Suite Setup    Connect to Device and Add Capabilities
Suite Teardown    Run Keywords    
...    Close Application
...    AND    
...    Close Connection
...    AND
...    Run Process    adb emu kill    shell=True
*** Test Cases ***
TestCase <ID>
    [Tags]    testConnection
    Log To Console    Connected
    Validate That Landing Page Opened
    Get All Release Dates
    Click Filter
    Filter With    DATE 
    Close Filter
    # Get First Release Date

    ## for loop to get all dates 
    ## filter with date  
    ## get first date and make sure it is not in the first 10 dates in the first list before filter and the first one in the list does not match this date


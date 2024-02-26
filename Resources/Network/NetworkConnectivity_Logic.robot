*** Settings ***
Resource    ../Commons/Commons.robot

*** Keywords ***
Check Movie Details Load Time
    ${START_TIME}    Get Current Date    result_format=%H:%M:%S
    Click Element    ${dateOfFirstRelease}
    Wait Until Element Is Visible    ${detailsPageBack}
    ${TIME_DIFF}    Calculate Time Diff In Minutes    ${START_TIME}
    #click on the first movie details
    #wait until the details page is opened
    #validate that the details page is opened

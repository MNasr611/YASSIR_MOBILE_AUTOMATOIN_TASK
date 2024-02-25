*** Settings ***
Resource    ../Commons/Commons.robot

*** Variables ***
${searchBarTV}    	//android.widget.TextView[@text="Search Movies"]
${filterButton}    	//android.view.View[3]/android.widget.Button
${filterWithDate}    //android.widget.TextView[@text="Release Date"]/parent::*//android.widget.RadioButton
${filterWithPopularity}    //android.widget.TextView[@text="Popularity"]/parent::*//android.widget.RadioButton
${closeFilter}    //android.view.View[@content-desc="Close"]/parent::*//android.widget.Button
${dateOfReleases}    //android.view.View//android.widget.TextView[2]
${dateOfFirstRelease}    (//android.view.View//android.widget.TextView[2])[1]




*** Keywords ***
Validate That Landing Page Opened
    Wait Until Element Is Visible    ${searchBarTV}




Click Filter 
    Wait Until Element Is Visible     ${filterButton}

    Click Element    ${filterButton}    


Filter With 
    [Arguments]    ${option}
    Wait Until Element Is Visible    ${filterWithDate}
    IF    '${option}' == 'DATE'
        
        Click Element    ${filterWithDate}
    ELSE IF    '${option}' == 'POBULARITY'
        Click Element    ${filterWithPopularity}
    END   


Close Filter
    Wait Until Element Is Visible     ${closeFilter}
    Click Element    ${closeFilter}


Get All Release Dates
    Wait Until Element Is Visible     ${dateOfReleases}
    ${releasesElements}    Get Webelements   ${dateOfReleases}
    ${releases}    Evaluate    []
    # ${releases}    Convert To List    @{releases}
    FOR    ${releaseElement}    IN   @{releasesElements}
        ${date}    Get Text   ${releaseElement} 
        Append To List    ${releases}    ${date}        
    END     
    Set Suite Variable    ${releases}
    Log    ${releases}

Get First Release Date
    ${dateOfFirstRelease}    Get Text    ${dateOfFirstRelease}   
    Set Suite Variable    ${dateOfFirstRelease}


Validate That Date After Filter Is Greater
    
    #date should be greater 

        


##For newtwork 
# get date and time before any action
# make action 
# get date and time after any action
# calculate timediff
# using adb command change the velocity to be E , 3g , 4g and so on





#     ${START_TIME}    Get Current Date    result_format=%H:%M:%S

#         ${TIME_DIFF}    Calculate Time Diff In Minutes    ${START_TIME}



# Calculate Time Diff In Minutes
#     [Arguments]    ${START_TIME}
#     ${END_TIME}=    Get Current Date    result_format=%H:%M:%S
#     ${TIME_DIFF}=    Subtract Time From Time    ${END_TIME}    ${START_TIME}
#     ${TIME_DIFF}=    Convert To Integer    ${TIME_DIFF}
#     ${TIME_DIFF}=    Evaluate    ${TIME_DIFF}/60
#     RETURN    ${TIME_DIFF}



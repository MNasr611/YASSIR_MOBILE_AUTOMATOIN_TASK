

*** Settings ***
Resource    ../Commons/Commons.robot





*** Keywords ***

Enable Wifi
    Run Process     ${ENABLE_WIFI}    shell=True    timeout=10s            
    Sleep    7s        

Close Wifi
    Run Process    ${DISABLE_WIFI}    shell=True    timeout=10s        
    Sleep    7s        

Enable Data
    Run Process    ${ENABLE_DATA}    shell=True    timeout=10s
    Sleep    7s        

Close Data
    Run Process    ${DISABLE_DATA}    shell=True    timeout=10s        
    Sleep    7s        

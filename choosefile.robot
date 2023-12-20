*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Choose the file  
    Open Browser    https://the-internet.herokuapp.com/upload 
    Wait Until Page Contains Element    //input[@id="file-upload"]
    Sleep    5
    Choose File    //input[@id="file-upload"]    ${EXECDIR}/example.robot
    Wait Until Page Contains Element    //input[@id="file-submit"]
    Click Button    //input[@id="file-submit"]
    
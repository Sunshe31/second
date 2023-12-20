*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Run Keywords
    Open Browser    https://the-internet.herokuapp.com/hovers    chrome
    Maximize Browser Window
    Mouse Over    (//img[@src="/img/avatar-blank.jpg"])[1]
    Click Link    (//a[contains (text(),'View profile')])[1]
    Go Back
    Mouse Over    (//img[@src="/img/avatar-blank.jpg"])[2]
    Click Link    (//a[contains (text(),'View profile')])[2]
    Go Back
    Mouse Over    (//img[@src="/img/avatar-blank.jpg"])[3]
    Click Link    (//a[contains (text(),'View profile')])[3]
    

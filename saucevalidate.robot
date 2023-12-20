*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Sauce validate
    Open Browser    https://dashboard.getsauce.com/
    Maximize Browser Window
    Wait Until Page Contains Element    //button[@type="submit"]
    Scroll Element Into View    //button[@type="submit"]
    Click Element    //button[@type="submit"]
    Wait Until Page Contains    Email field is required!
    Page Should Contain    Email field is required!
    Wait Until Page Contains Element    //div[contains (text(), "Email field is required!")]   
    Page Should Contain Element   //div[contains (text(), "Email field is required!")]    
    #Page Should Contain Element   //div[contains (text(), "Password field is required!")] 

    
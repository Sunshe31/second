*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login 
    Open Browser     http://115.97.255.108:85/login#login    chrome
    Maximize Browser Window
    Click Element    //a[@class="nav-link btn-login-area active"]
    Input Text    //input[@id="login_email"]    aishwarya
    Sleep    2
    Input Text    //input[@id="login_password"]    Asdqwe@123
    Click Button    //button[@class="btn btn-sm btn-primary btn-block btn-login"]
    Capture Page Screenshot
    Wait Until Page Contains Element    //a[@title="DMS"]    50
    Scroll Element Into View    //a[@title="DMS"]
    Capture Page Screenshot

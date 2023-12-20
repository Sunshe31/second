*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
tc01
    [Tags]    pet 
    Open Browser    https://petstore.swagger.io/    firefox
    Maximize Browser Window
    Capture Page Screenshot
    Close Browser
    
tc02
    [Tags]    sauce
    Open Browser    https://www.saucedemo.com/v1/    edge
    Maximize Browser Window
    Capture Page Screenshot
    Close Browser

tc03
    [Tags]    you
    Open Browser    https://www.youtube.com/    firefox
    Maximize Browser Window
    Capture Page Screenshot
    Close Browser
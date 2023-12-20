*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Add or Remove

    Open Browser    https://the-internet.herokuapp.com/    chrome
    Maximize Browser Window
    Click Element    //a[contains (text(), 'Add/Remove Elements')]
    Click Button     //button[@onclick="addElement()"]
    Wait Until Page Contains Element    //button[@onclick="deleteElement()"]
    Click Button    //button[@onclick="deleteElement()"]
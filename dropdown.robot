*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
@{remove}    //button[contains (text() , 'Remove/add')]
@{add}    //button[contains (text() , 'Add')]
@{checkbox}    //input[@id="checkbox"]
*** Test Cases ***
Dropdown
    Open Browser    https://the-internet.herokuapp.com/    chrome
    Click Element    //a[@href="/dropdown"]
    Click Element    //select[@id="dropdown"]
    Click Element    //option[@value="2"]
    Sleep    3s
    Go Back
    Click Element    //a[@href="/dynamic_controls"]
    IF    $checkbox == $remove
        Select Checkbox    ${checkbox}
        Wait Until Page Contains Element    ${add}
        Sleep    10s
    END

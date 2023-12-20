*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Loading the Page    
    Open Browser    https://the-internet.herokuapp.com/dynamic_loading    chrome
    Click Element    //a[@href="/dynamic_loading/1"]
    Click Button    //button[contains (text(),'Start')]
    Wait Until Element Is Visible    //div[@id="finish"]    10
    Go Back
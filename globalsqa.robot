*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{a}    (//a[contains (text(), 'Home')])[1]    (//a[contains (text(), 'CheatSheets')])[1]    


*** Test Cases ***
Global SQA

    Open Browser    https://www.globalsqa.com/cheatsheets/
    # Maximize Browser Window
    FOR    ${element}    IN    @{a}
        Wait Until Page Contains Element    ${element}
        Click Element    ${element}
    END    
    Mouse Over    (//a[@class="no_border"])[1]    
    Mouse Over    (//a[@class="no_border"])[2]

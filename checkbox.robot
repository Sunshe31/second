*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py


*** Variables ***
${uncheck}    (//input[@type="checkbox"])[1]    
${check}    (//input[@type="checkbox"])[2]

*** Test Cases ***
Check box
    Open Browser    https://the-internet.herokuapp.com/
    Click Element    //a[@href="/checkboxes"]

    IF    $check == $uncheck
    
        Click Button    ${uncheck}
        Click Button    ${check}

    ELSE
        Click Button    ${uncheck}
        Click Button    ${check} 
    END
    
    # Select Checkbox    (//input[@type="checkbox"])[1]
    # Select Checkbox    (//input[@type="checkbox"])[2]
    # Unselect Checkbox    (//input[@type="checkbox"])[1]
    # Unselect Checkbox    (//input[@type="checkbox"])[2]
*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
Create Enable helpdesk is checked Department and verify created department in eCapsule 011-03
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    hr_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    Sleep    5
    Wait Until Page Contains Element    //a[@title="HR"]    5
    Click Element    //a[@title="HR"]
    Wait Until Page Contains Element    //a[@title="Department"]    
    Sleep    2
    Click Element    //a[@title="Department"]

    Wait Until Page Contains Element    //button[@class="btn btn-primary btn-sm primary-action"]
    Click Button    //button[@class="btn btn-primary btn-sm primary-action"]
    Click Button    //button[@data-label="Save"]
    Sleep    2
    Click Button    //button[@data-dismiss="modal"]
    Sleep    2

    Input Text    //input[@data-fieldname="department_name"]    HumanRes
    Input Text    //input[@data-fieldname="abbr"]    HR
    Click Button    //button[@data-label="Save"]

    Sleep    1
    Go Back
    
    Wait Until Page Contains Element    //a[@title="HumanRes - ADPL"]
    Sleep    2
    Click Link    //a[@title="HumanRes - ADPL"]
    Select Checkbox    //input[@data-fieldname="enable_helpdesk"]
    Click Button    //button[@data-label="Save"]

    Go Back

    # Click Element    //a[@title="HelpDesk"]
    # Click Element    //a[@title="Service Request"]

    # Click Button    //button[@class="btn btn-primary btn-sm primary-action"]

*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
Create, Edit, Verification of Newly created Department and Restrict to Create Duplicate Department in eCapsule 011-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    hr_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

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

    Input Text    //input[@data-fieldname="department_name"]    Standard2
    Input Text    //input[@data-fieldname="abbr"]    Std
    Click Button    //button[@data-label="Save"]

    Sleep    1
    Go Back
    
    Wait Until Page Contains Element    //a[@title="Standard2 - ADPL"]
    Click Link    //a[@title="Standard - ADPL"]
    Input Text    //input[@data-fieldname="abbr"]    Stdd
    Click Button    //button[@data-label="Save"]

    Go Back
    Go Back

    Wait Until Page Contains Element    //a[@title="Employee"]
    Click Element    //a[@title="Employee"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[3]

    Click Element    (//input[@data-fieldname="department"])[2]
    Input Text    (//input[@data-fieldname="department"])[2]    Standard2

    Go Back
    Go Back

    Wait Until Page Contains Element    //a[@title="Department"]
    Click Element    //a[@title="Department"]
    Click Button    //button[@class="btn btn-primary btn-sm primary-action"]

    Input Text    //input[@data-fieldname="department_name"]    Standard2
    Input Text    //input[@data-fieldname="abbr"]    Stdd
    Click Button    //button[@data-label="Save"]
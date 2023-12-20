*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
Deletion, Restriction to Delete the Department and Verification of the Deleted Department in eCapsule 011-02
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


    Wait Until Page Contains Element    //a[@title="Standard1 - ADPL"]
    Click Link    //a[@title="Standard1 - ADPL"]

    Click Button    (//button[@data-original-title="Menu"])[3]
    Click Element    (//span[@data-label="Delete"])[2]
    Click Button    //button[@class="btn btn-primary btn-sm btn-modal-primary"]

    Sleep    2
    Click Link    //a[@title="Information Technology - ADPL"]
    Wait Until Page Contains Element    (//button[@data-original-title="Menu"])[3]

    Click Button    (//button[@data-original-title="Menu"])[3]
    Click Element    (//span[@data-label="Delete"])[2]
    Sleep    2
    Click Element    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[2]
    Sleep    2
    Click Button    (//button[@class="btn btn-modal-close btn-link"])[3]

    Go Back
    Sleep    2
    Select Checkbox    //input[@data-name="standard3 - ADPL"]
    # Select Checkbox    //input[@data-name="standard2 - ADPL"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm"])[3]
    Click Element    //span[@data-label="Delete"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[3]

    Go Back
    Sleep    2
    Wait Until Page Contains Element    //a[@title="Employee"]
    Click Element    //a[@title="Employee"]
    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[3]

    Click Element    (//input[@data-fieldname="department"])[2]
    Input Text    (//input[@data-fieldname="department"])[2]    standard2

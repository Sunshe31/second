*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
Create, Edit and Verification of Created Area in eCapsule 029-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    qa_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    Wait Until Page Contains Element    //span[contains (text(), 'Quality Assurance')]
    Sleep    2
    Click Element    //span[contains (text(), 'Quality Assurance')]
    Click Element    //a[@title="List of Areas"]

    Sleep    2
    Click Button    //button[@class="btn btn-primary btn-sm primary-action"]
    Click Button    //button[@data-label="Save"]
    Sleep    2
    Click Button    //button[@class="btn btn-modal-close btn-link"]

    Sleep    3
    Input Text    //input[@data-fieldname="area_code"]    S31162
    Input Text    //input[@data-fieldname="area_name"]    Zin

    Click Button    //input[@data-fieldname="department"]
    Sleep    2
    Click Element    //p[@title="All Departments"]
    Click Button    //button[@data-label="Save"]
    
    Sleep    3
    Click Button    //button[@data-label="Submit"]
    Sleep    2
    Click Button    //button[@class="btn btn-primary btn-sm btn-modal-primary"]

    Sleep    2
    Go Back
    Go Back
    
    Sleep    3
    Click Element    //a[@title="Asset Calibration"]
    Sleep    3
    Click Element    //a[@title="List of Asset"]

    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[2]
    Sleep    2
    Click Element    //a[@id="asset-tab_break_nmc8z-tab"]

    Click Element    //input[@data-fieldname="area"]
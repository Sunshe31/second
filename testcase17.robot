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

    Set Browser Implicit Wait    5
    Wait Until Page Contains Element    //span[contains (text(), 'Quality Assurance')]
    Sleep    2
    Click Element    //span[contains (text(), 'Quality Assurance')]
    Click Element    //a[@title="List of Areas"]

    Click Link    //a[@title="A00091"]
    Click Button    (//button[@data-original-title="Menu"])[3]
    Sleep    2
    Click Element    (//span[@data-label="Delete"])[2]
    Click Button    //button[@class="btn btn-primary btn-sm btn-modal-primary"]

    Sleep    2
    Select Checkbox    //input[@data-name="H-200"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm"])[2]
    Click Element    //span[@data-label="Delete"]
    Sleep    2
    # Click Button    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[2]

    Sleep    2
    Click Link    //a[@title="S3115"]
    Click Button    (//button[@data-original-title="Menu"])[3]
    Go Back
    Reload Page
    Sleep    2
    Select Checkbox    //input[@data-name="H002"]
    Select Checkbox    //input[@data-name="S3115"]

    Sleep    2
    Click Button    //button[@class="btn btn-primary btn-sm"]
    Click Element    //span[@data-label="Delete"]
    Sleep    2
    Click Button    (//button[@class="btn btn-modal-close btn-link"])[2]

    Sleep    2
    Go Back
    
    Sleep    3
    Click Element    //a[@title="Asset Calibration"]
    Sleep    3
    Click Element    //a[@title="List of Asset"]

    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[2]
    Click Element    //a[@id="asset-tab_break_nmc8z-tab"]

    Click Element    //input[@data-fieldname="area"]


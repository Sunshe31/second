*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
Create, Edit, Validate, Set Whole Number, Unset Whole Number and Validate Whole number function in eCapsule 025-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    rmpm_manager
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    
    Set Browser Implicit Wait    5
    Input Text    //input[@id="navbar-search"]    UOM
    Press Keys    //input[@id="navbar-search"]    ENTER

    Click Button    //button[@class="btn btn-primary btn-sm primary-action"]
    Sleep    2
    Click Button    //button[@class="btn btn-secondary btn-sm "]

    Click Button    //button[@data-label="Save"]
    Sleep    2
    Click Button    (//button[@class="btn btn-modal-close btn-link"])[2]

    Input Text    (//input[@data-fieldname="uom_name"])[1]    NON
    Sleep    2
    Click Button    //button[@data-label="Save"]
    Sleep    2
    Go Back
    Sleep    2
    Click Link    //a[@title="NON"]
    Select Checkbox    //input[@data-fieldname="must_be_whole_number"]
    Click Button    //button[@data-label="Save"]
    Go Back
    Go Back

    Wait Until Page Contains Element    //span[contains (text(), 'Quality Assurance')]
    Sleep    2
    Click Element    //span[contains (text(), 'Quality Assurance')]
    Click Element    //a[@title="Item"]

    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[3]
    Sleep    5
    Input Text    (//input[@data-fieldname="item_group"])[2]    Active
    Sleep    3
    Press Keys    (//input[@data-fieldname="item_group"])[2]    ENTER
    Sleep    2
    Input Text    //input[@data-fieldname="stock_uom"]    NON
    Press Keys    //input[@data-fieldname="stock_uom"]    ENTER

    Click Element    //div[@class="avatar-frame standard-image"]
    Click Element    (//a[@class="dropdown-item"])[14]

    Click Element    ${loging}
    Input Text    ${mail}    qa_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    Set Browser Implicit Wait    6
    Wait Until Page Contains Element    (//a[@class="item-anchor block-click"])[6]
    Click Element    (//a[@class="item-anchor block-click"])[6]    #stock Module
    Sleep    3
    Wait Until Page Contains Element    //a[@title="Material Request"] 
    Click Element    //a[@title="Material Request"]

    Sleep    2
    Click Button    //button[@class="btn btn-primary btn-sm primary-action"]
    
    Click Element    (//select[@data-fieldname="material_request_type"])[2]
    Click Element    (//option[@value="Material Issue"])[2]

    Click Element    //input[@data-fieldname="schedule_date"]
    Sleep    2
    # Click Element    (//span[@data-action="today"])[1]

    Click Button    //button[@class="btn btn-xs btn-secondary grid-add-row"]
    Click Element    (//div[@class="row-index sortable-handle col"])[2]

    Sleep    2
    Input Text    //input[@data-fieldname="item_code"]    COGN0032
    Press Keys    //input[@data-fieldname="item_code"]    ENTER
    Input Text    //input[@data-fieldname="qty"]    111.1

    Click Button    //button[@class="btn btn-secondary btn-sm pull-right grid-collapse-row"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[2]








*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
verify the Deletion, restrict to deletion of UOM and Verification in eCapsule 025-02
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    rmpm_manager
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    
    Set Browser Implicit Wait    5
    Input Text    //input[@id="navbar-search"]    UOM
    Press Keys    //input[@id="navbar-search"]    ENTER

    Click Link    //a[@title="NON"]
    Click Button    (//button[@data-original-title="Menu"])[3]
    Click Element    (//span[@data-label="Delete"])[2]
    Click Button    //button[@class="btn btn-primary btn-sm btn-modal-primary"]

    Sleep    3
    Select Checkbox    //input[@data-name="Kilo"]
    Select Checkbox    //input[@data-name="Gr"]
    Click Button    (//button[@class="btn btn-primary btn-sm"])[2]
    Click Element    //span[@data-label="Delete"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[2]


    
    Sleep    3
    Click Link    //a[@title="Nos"]
    Click Button    (//button[@data-original-title="Menu"])[3]
    Click Element    (//span[@data-label="Delete"])[2]
    Sleep    2
    Click Element    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[3]
    Sleep    2
    Click Button    (//button[@class="btn btn-modal-close btn-link"])[4]

    Go Back
    Go Back

    # Sleep    2
    Click Element    //a[@class="navbar-brand navbar-home"]
    Wait Until Page Contains Element    //span[contains (text(), 'Quality Assurance')]
    Sleep    2
    Click Element    //span[contains (text(), 'Quality Assurance')]
    Sleep    2
    Click Element    //a[@title="Item"]

    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[3]
    Sleep    5
    Input Text    (//input[@data-fieldname="item_group"])[2]    Active
    Sleep    3
    Press Keys    (//input[@data-fieldname="item_group"])[2]    ENTER
    Sleep    2
    Input Text    //input[@data-fieldname="stock_uom"]    Kilo
    


    

    
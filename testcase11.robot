*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
verify the Restriction to select Purchase Order, if Purchase Order status as Draft, To Bill and To Receive and Bill that Purchase Order with different supplier, other than selected in Gate Entry 003-03
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    gateentry_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    # stock module and gate entry
    Wait Until Page Contains Element    //span[@item-icon="stock"]  
    Sleep    2  
    Click Element    //span[@item-icon="stock"]
    Click Element    //a[@title="Gate Entry"]

    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[1]
    Click Button    //button[@data-label="Save"]
    Sleep    2
    Press Keys    //button[@class="btn btn-modal-close btn-link"]    ENTER
    Sleep    2
    Press Keys    //input[@data-fieldname="supplier"]    S0002
    Sleep    2
    Press Keys    //input[@data-fieldname="supplier"]    ENTER

    Sleep    2
    Click Button    (//button[@data-toggle="dropdown"])[6]
    Sleep    3
    Click Element    //a[@data-label="Purchase%20Order"]
    Sleep    3

    Input Text    //input[@data-fieldname="search_term"]    050
    Sleep    2
    Click Element   //span[@title="S0002"]

    Sleep    2
    Click Element    //button[@class="btn btn-primary btn-sm btn-modal-primary"]    #Get Items

    Sleep    2
    Click Button    //button[@data-label="Save"]

    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm"])[3]
    Sleep    2
    Click Element    (//span[@data-label="Submit"])[2]
        
*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${wait}    //span[@item-icon="stock"]  
${click}    //span[@item-icon="stock"]
${click1}    //a[@title="Gate Entry"]
${click2}    (//button[@class="btn btn-primary btn-sm primary-action"])[1]
${click3}    //button[@data-label="Save"]
${press}    //button[@class="btn btn-modal-close btn-link"]
${press1}    //input[@data-fieldname="supplier"]
${enter}    //input[@data-fieldname="supplier"]
${click4}    (//button[@data-toggle="dropdown"])[6]
${click5}    //a[@data-label="Purchase%20Order"]
${272}    //input[@data-fieldname="search_term"]
${click6}    //span[@title="S0002"]
${get}    //button[@class="btn btn-primary btn-sm btn-modal-primary"]
${click7}    //button[@data-label="Save"]
${click8}    (//button[@class="btn btn-primary btn-sm"])[3]
${click9}    (//span[@data-label="Submit"])[2]


*** Test Cases ***
Verify the Creation of Gate Entry with Purchase Order in eCapsule 003-02
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    gateentry_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    
    # stock module and gate entry
    Wait Until Page Contains Element    ${wait}
    Sleep    2  
    Click Element    ${click}
    Click Element    ${click1}

    Click Button    ${click2}
    Click Button    ${click3}
    Sleep    2
    Press Keys    ${press}    ENTER
    Sleep    2
    Press Keys    ${press1}    S0002
    Sleep    2
    Press Keys    ${enter}    ENTER

    Sleep    3
    Click Button    ${click4}
    Sleep    3
    Click Element    ${click5}
    Sleep    3

    Input Text    ${272}    272
    Sleep    2
    Click Element   ${click6}

    Sleep    2
    Click Element    ${get}    #Get Items

    Sleep    3
    Click Button    ${click7}

    Sleep    2
    Click Button    ${click8}
    Sleep    2
    Click Element    ${click9}
        
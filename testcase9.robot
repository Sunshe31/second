*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${wait}    //span[@item-icon="stock"]
${click}    //span[@item-icon="stock"]
${click1}    //a[@title="Gate Entry"]
${click2}    (//button[@class="btn btn-primary btn-sm primary-action"])[1]
${click3}    //button[@data-label="Save"]
${enter}    //button[@class="btn btn-modal-close btn-link"]
${s0002}    //input[@data-fieldname="supplier"]
${enter1}    //input[@data-fieldname="supplier"]
${4466}    //input[@data-fieldname="register_no"]
${23628}    //input[@data-fieldname="invoice_no"]
${click4}    //input[@data-fieldname="invoice_date"]
${click5}    (//span[@data-action="today"])[4]
${input}    //input[@data-fieldname="challan_no"]
${click6}    //input[@data-fieldname="challan_date"]
${click7}    (//span[@data-action="today"])[5]
${s}    //input[@data-fieldname="transporter_name"]
${enter2}    //input[@data-fieldname="transporter_name"]
${6568}    //input[@data-fieldname="vehicle_no"]
${input1}    //input[@data-fieldname="road_permit_no"]
${click8}    //input[@data-fieldname="road_permit_date"]
${click9}    (//span[@data-action="today"])[1]
${input2}    //input[@data-fieldname="lr_number"]
${click10}    //input[@data-fieldname="lr_date"]
${click11}    (//span[@data-action="today"])[6]
${input3}    //input[@data-fieldname="freight_to_pay"]
${input4}    //input[@data-fieldname="frieight_paid"]
${press}    //button[@class="btn btn-modal-close btn-link"]
${click12}    //button[@class="btn btn-xs btn-secondary grid-add-row"]
${press1}    (//div[@data-fieldname="item_code"])[2]
${press2}    (//div[@data-fieldname="item_code"])[2]
${200}    (//input[@data-fieldname="qty"])[1]
${save}    //button[@data-label="Save"]




*** Test Cases ***
Verify the Creation of Gate Entry without Purchase Order in eCapsule 003-01
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
    Press Keys    ${enter}    ENTER
    Sleep    2
    Press Keys    ${s0002}    S0002
    Sleep    2
    Press Keys    ${enter1}    ENTER

    Input Text    ${4466}    4466

    Input Text    ${23628}    23628
    Sleep    2
    Click Element    ${click4}
    Sleep    2
    Click Element    ${click5}

    Input Text    ${input}    6523746283

    Click Element    ${click6}
    Sleep    2
    Click Element    ${click7}

    Press Keys    ${s}    S
    Press Keys    ${enter2}    ENTER

    Input Text    ${6568}    6568

    Input Text    ${input1}    54679

    Click Element    ${click8}
    Sleep    2
    Click Element    ${click9}

    Input Text    ${input2}    632579
    Click Element    ${click10}
    Sleep    2
    Click Element    ${click11}

    Input Text    ${input3}    6347
    Input Text    ${input4}    6347

    Sleep    5
    # Click Button    //button[@data-label="Save"]
    
    Sleep    3
    Press Keys    ${press}    ENTER
    Sleep    2

    Click Button    ${click12}

    Sleep    5
    Press Keys    ${press1}    CAPG0002
    Press Keys    ${press2}    ENTER

    Input Text    ${200}    200
    Sleep    2

    Click Button    ${save}

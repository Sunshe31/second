*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${wait1}    //span[@item-icon="stock"]  
${stock}    //span[@item-icon="stock"] 
${mr}    //a[@href="/app/material-request"]
${wait2}    //select[@data-fieldname="material_request_type"]
${click1}    //select[@data-fieldname="material_request_type"]
${material}    //option[@value="Material Issue"]
${pending}    (//select[@data-fieldname="status"])[1]
${enter}    (//select[@data-fieldname="status"])[1]
${wait3}    //div[@data-label="Create"]
${click2}    //button[@class="btn ellipsis btn-primary"]
${wait4}    //a[@data-label="Issue%20Material"]
${click3}    //a[@data-label="Issue%20Material"]
${save1}    //button[@data-label="Save"]
${openrow1}    (//div[@class="row-index sortable-handle col"])[4]
${click4}    //button[@class="btn btn-secondary btn-sm pull-right grid-collapse-row"]
${click5}    //button[@data-label="Submit"]
${wait5}    //button[@class="btn btn-primary btn-sm btn-modal-primary"]



*** Test Cases ***
To check the system ability for restriction of Manual Creation Stock Entry in eCapsule 14-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    stock_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    

    Wait Until Page Contains Element    ${wait1}
    Sleep    2  
    Click Element    ${stock}    #stock Module
    Sleep    3
    Click Link    ${mr}    # MR Doctype

    
    Wait Until Page Contains Element    ${wait2}
    Sleep    2
    Click Element    ${click1}    #Purpose filtering for status
    Click Element    ${material}    #Material Issue 
    Sleep    2
    Press Keys   ${pending}    pending
    Press Keys   ${enter}    ENTER

    Sleep    2
    Click Link    //a[@data-name="MAT-MR-2023-00475"]

    Wait Until Page Contains Element    ${wait3}
    Click Button    ${click2}    #Create button

    Wait Until Page Contains Element    ${wait4}
    Click Element    ${click3}
    
    Sleep    2
    Click Button    ${save1}
    Sleep    2
    Click Element    ${openrow1}    #Open row 1
    Sleep    2

    Click Button    ${click4}
    Sleep    2

    Click Button    ${click5}
    Wait Until Page Contains Element    ${wait5}
    # Click Button    //button[@class="btn btn-primary btn-sm btn-modal-primary"]



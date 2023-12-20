*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${new}    //input[@id="navbar-search"]
${enter}    //input[@id="navbar-search"]
${click}    //button[@class="btn btn-default btn-sm filter-button"]
${raw}    (//input[@data-target="Item Group"])[2]
${enter}    (//input[@data-target="Item Group"])[2]
${item}    //input[@id="navbar-search"]
${enter1}    //input[@id="navbar-search"]
${additem}    (//button[@class="btn btn-primary btn-sm primary-action"])[3] 
${click1}    (//button[@data-label="Save"])[2]
${click2}    //button[@data-dismiss="modal"]
${para}    (//input[@data-fieldname="item_name"])[2]
${active}    (//input[@data-fieldname="item_group"])[2]
${enter1}    (//input[@data-fieldname="item_group"])[2]
${660}    //input[@data-fieldname="gst_hsn_code"]
${enter2}    //input[@data-fieldname="gst_hsn_code"]
${kg}    //input[@data-fieldname="stock_uom"]
${enter3}    //input[@data-fieldname="stock_uom"]




*** Test Cases ***
Creation of Item Code under parent item group of Raw Material and verification 002-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    rmpm_manager
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    
    # Scroll Element Into View    //a[@href="/app/quality-assurance"]
    # Click Element    //a[@href="/app/quality-assurance"]    #Quality Assurance module
    Sleep    2
    Press Keys    ${new}    New Item Group
    Press Keys    ${enter}    ENTER
    Sleep    2
    Click Link    //a[@href="/app/item-group/view/List"]

    Sleep    2
    Click Element    ${click}
    Sleep    2
    Press Keys    ${raw}    Raw Material
    Press Keys    ${enter}    ENTER

    Sleep    2
    Click Link    //a[@data-name="Raw Material"]
    Sleep    2
    Press Keys    ${item}    Item
    Press Keys    ${enter1}    ENTER
    Sleep    2
    Click Button    ${additem}   #Add Item
    Sleep    2
    Click Button    ${click1}

    Sleep    2
    Click Button    ${click2}
    Sleep    5

    Input Text    ${para}    Para6050

    Sleep    2
    Press Keys    ${active}    Active 
    Sleep    2
    Press Keys    ${enter1}    ENTER
    Sleep    2
    
    Press Keys    ${660}    660
    Sleep    2
    Press Keys    ${enter2}    ENTER

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    2
    Press Keys    ${kg}    Kg
    Sleep    2
    Press Keys    ${enter3}    ENTER
    Sleep    2
    # Click Button    (//button[@data-label="Save"])[2]
    # Click Button    (//span[@data-label="Actions"])[7]
    # Sleep    2
    # Click Element    (//span[@data-label="Submit"])[2]






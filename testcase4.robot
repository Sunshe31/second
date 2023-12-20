*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${wait1}    //span[@item-icon="stock"]    
${stock}    (//div[@class="desk-sidebar-item standard-sidebar-item "])[4]
${wait2}    (//span[@class="link-content ellipsis"])[6]   
${mr}    (//span[@class="link-content ellipsis"])[6]
${wait3}    //select[@data-fieldname="material_request_type"]
${filter}    //select[@data-fieldname="material_request_type"]
${purchase}    //option[@value="Purchase"]
${pending}    (//select[@data-fieldname="status"])[1]
${enter}    (//select[@data-fieldname="status"])[1]
${create}    //div[@data-label="Create"]
${create1}    //button[@class="btn ellipsis btn-primary"]
${wait4}    //a[@data-label="Purchase%20Order"]
${create2}    (//a[contains (text(), 'Purchase Order')])[1]
${click1}    //label[contains (text(), 'For Default Supplier (Optional)')]
${createpop}    (//button[contains (text(), 'Create')])[3]
${save}    //button[@data-label="Save"]
${save1}    //button[@data-label="Save"]
${xicon2}    (//button[@data-dismiss="modal"])[2]
${pack}    //input[@data-fieldname="parent_group"]
${enter1}    //input[@data-fieldname="parent_group"]
${enter3}    //p[@title="Packing Material"]
${sup1}    //input[@data-fieldname="supplier"]
${sup2}    //p[@title="S0002"]
${row}    (//div[@class="row-index sortable-handle col"])[4]
${date2}    (//input[@data-fieldtype="Date"])[3]
${manu1}    //input[@data-fieldname="manufacturer"]
${manuid1}    //p[@title="M0002"]
${manuadd1}    //input[@data-fieldname="mfr_address_list"]
${click2}    //button[@class="btn btn-secondary btn-sm pull-right grid-collapse-row"]
${save2}    //button[@data-label="Save"]

*** Test Cases ***
Verify the Make Correction in Purchase Order 16-05
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    purchase_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    Wait Until Page Contains Element    ${wait1}
    Click Element    ${stock}    #stock Module
    Sleep    3
    Wait Until Page Contains Element    ${wait2} 
    Click Element    ${mr}    # MR Doctype

    
    Wait Until Page Contains Element    ${wait3}
    Sleep    2
    Click Element    ${filter}    #Purpose filtering for pending status
    Click Element    ${purchase}    #purchase option
    Sleep    2
    Press Keys   ${pending}    pending
    Press Keys   ${enter}    ENTER


    Wait Until Page Contains Element    //a[@data-name="MAT-MR-2023-00314"]
    Click Link    //a[@data-name="MAT-MR-2023-00314"]           #mr id
    Sleep    5

    Wait Until Page Contains Element    ${create}
    Click Button    ${create1}    #Create button
    Wait Until Page Contains Element    ${wait4}
    Click Element    ${create2}   #create button option PO
    Sleep    2

    Click Element    ${click1}
    Sleep    2

    Click Button    ${createpop}    #Create button in supplier pop-up
    
    Wait Until Page Contains Element    ${save}
    Sleep    2

    Click Button    ${save1}   #Save button for throw
    Sleep    2

    Click Button    ${xicon2}    #X Icon

    Sleep    2

    Press Keys    ${pack}    packing material
    Press Keys    ${enter1}    ENTER
    Sleep    3
    Press Keys    ${enter3}    ENTER
    Sleep    3

    Click Element    ${sup1}    #supplier
    Sleep    2
    Click Element    ${sup2}    #supplier id

    # Scroll Element Into View    (//button[contains (text(), 'Add Multiple')])[2]
    Sleep    2
    Click Element    ${row}    #Open row 1
    Sleep    2
    Input Text    ${date2}    09-11-2023


    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    2
    Click Element    ${manu1}    #Manufacturer field
    Sleep    2
    Click Element    ${manuid1}    #Manufacturer id
    Sleep    2
    Click Element    ${manuadd1}    #Manufacturer address

    # Sleep    2
    # Input Text    //input[@data-fieldname="rate"]    136    #rate field
    Sleep    2
    Click Button    ${click2}
    Sleep    2
  
    Click Button    ${save2}
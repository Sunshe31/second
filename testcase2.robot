*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${wait}    //span[@item-icon="stock"] 
${stock}    (//div[@class="desk-sidebar-item standard-sidebar-item "])[4]
${wait1}    (//span[contains (text(),'Item Group')])[1] 
${item}    (//span[contains (text(),'Item Group')])[1]
${click1}    //a[contains (text(), ' Packing Material')]
${click2}    (//button[contains (text(), 'Details')])[6]
${wait2}    (//span[@class="link-content ellipsis"])[6]   
${mr}    (//span[@class="link-content ellipsis"])[6]
${wait3}    //select[@data-fieldname="material_request_type"]
${filter}    //select[@data-fieldname="material_request_type"]
${purchase1}    //option[@value="Purchase"]
${pending}    (//select[@data-fieldname="status"])[1]
${enter}    (//select[@data-fieldname="status"])[1]
${wait4}    //div[@data-label="Create"]
${click3}    //button[@class="btn ellipsis btn-primary"]
${wait5}    //a[@data-label="Purchase%20Order"]
${click4}    (//a[contains (text(), 'Purchase Order')])[1]
${click5}    //label[contains (text(), 'For Default Supplier (Optional)')]
${supplier1}    (//button[contains (text(), 'Create')])[3]
${wait6}    (//button[contains (text(), 'Create')])[3]
${save}    //button[@data-label="Save"]
${xicon}    (//button[@data-dismiss="modal"])[2]
${raw}    //input[@data-fieldname="parent_group"]
${enter1}    //p[@title="Raw Material"]
${sup1}    //input[@data-fieldname="supplier"]
${supid}    //p[@title="S0002"]
${openrow}    (//div[@class="row-index sortable-handle col"])[9]
${date}    (//input[@data-fieldtype="Date"])[3]
${manu}    //input[@data-fieldname="manufacturer"]
${manuid}    //p[@title="M0002"]
${manuadd}    //input[@data-fieldname="mfr_address_list"]
${click6}    //button[@class="btn btn-secondary btn-sm pull-right grid-collapse-row"]
${save1}    //button[@data-label="Save"]


*** Test Cases ***
creation of a Purchase Order from a Material Request and verification of created PO numbering series 16-02
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    purchase_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    Sleep    2
    Wait Until Page Contains Element    ${wait}
    Click Element    ${stock}    #stock Module   

    Sleep    3
    Wait Until Page Contains Element    ${wait1}   
    Click Element    ${item}     # Item Group

    Sleep    5
    Click Element    ${click1}
    Click Button    ${click2}
    Go Back
    Go Back

    Wait Until Page Contains Element    ${wait2} 
    Click Element    ${mr}    # MR Doctype

    Wait Until Page Contains Element    ${wait3}
    Sleep    2
    Click Element    ${filter}    #Purpose filtering for pending status
    Click Element    ${purchase1}    #purchase option
    Sleep    2
    Press Keys   ${pending}    pending
    Press Keys   ${enter}    ENTER
    Sleep    2

    Wait Until Page Contains Element    //a[@data-name="MAT-MR-2023-00402"]
    Click Element    //a[@data-name="MAT-MR-2023-00402"]
    Sleep    2

    Wait Until Page Contains Element    ${wait4}
    Click Button    ${click3}    #Create button
    Wait Until Page Contains Element    ${wait5}
    Click Element    ${click4}   #create button option PO
    Sleep    2

    Click Element    ${click5}
    Sleep    2

    Click Button    ${supplier1}    #Create button in supplier pop-up
    
    Wait Until Page Contains Element    ${wait6}
    Sleep    5

    Click Button    ${save}   #Save button for throw
    Sleep    2

    Click Button    ${xicon}    #X Icon

    Sleep    2

    Press Keys    ${raw}    raw material
    Sleep    3
    Press Keys    ${enter1}    ENTER
    Sleep    3


    Click Element    ${sup1}    #supplier
    Sleep    2
    Click Element    ${supid}    #supplier id

    Sleep    5
    Click Element    ${openrow}    #Open row 1
    Sleep    2
    Input Text    ${date}    09-11-2023


    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    2
    Click Element    ${manu}    #Manufacturer field
    Sleep    2
    Click Element    ${manuid}    #Manufacturer id
    Sleep    2
    Click Element    ${manuadd}    #Manufacturer address

    # Sleep    2
    # Input Text    //input[@data-fieldname="rate"]    136    #rate field
    Sleep    2
    Click Button    ${click6}
    Sleep    2
  
    Click Button    ${save1}
    Go Back 
    Go Back
    

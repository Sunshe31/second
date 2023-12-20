*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py
Variables    abspath/data.py

*** Variables ***
${wait}    //span[@item-icon="stock"]  
${stock}    (//div[@class="desk-sidebar-item standard-sidebar-item "])[4]
${wait1}    (//span[@class="link-content ellipsis"])[6] 
${mr}    (//span[@class="link-content ellipsis"])[6]
${wait2}    //select[@data-fieldname="material_request_type"]
${filter}    //select[@data-fieldname="material_request_type"]
${purchase}    //option[@value="Purchase"]
${pending}    (//select[@data-fieldname="status"])[1]
${enter}    (//select[@data-fieldname="status"])[1]
${wait3}    //a[@data-name="MAT-MR-2023-00466"]
${mrid}    //a[@data-name="MAT-MR-2023-00466"]
${wait4}    //div[@data-label="Create"]
${create}    //button[@class="btn ellipsis btn-primary"]
${wait5}    //a[@data-label="Purchase%20Order"]
${create1}    (//a[contains (text(), 'Purchase Order')])[1]
${click}    //label[contains (text(), 'For Default Supplier (Optional)')]
${createpop}    (//button[contains (text(), 'Create')])[3]
${wait6}    //button[@data-label="Save"]
${save}    //button[@data-label="Save"]
${xicon}    (//button[@data-dismiss="modal"])[2]
${raw}    //input[@data-fieldname="parent_group"]
${enter1}    //p[@title="Raw Material"]
${supplier}    //input[@data-fieldname="supplier"]
${supplierid}    //p[@title="S0002"]
${open}    (//div[@class="row-index sortable-handle col"])[4]
${date}    (//input[@data-fieldtype="Date"])[3]
${java}    window.scrollTo(0, document.body.scrollHeight)
${manu}    //input[@data-fieldname="manufacturer"]
${manuid}    //p[@title="M0002"]
${manuadd}    //input[@data-fieldname="mfr_address_list"]
${click1}    //button[@class="btn btn-secondary btn-sm pull-right grid-collapse-row"]
${save1}    //button[@data-label="Save"]
${partially}    (//select[@data-fieldname="status"])[1]
${partially1}    (//select[@data-fieldname="status"])[1]
${link}    //a[@data-name="MAT-MR-2023-00179"]
${until}    //div[@data-label="Create"]
${create2}    //button[@class="btn ellipsis btn-primary"]
${wait7}    //button[@class="btn ellipsis btn-primary"]
${create3}    (//a[contains (text(), 'Purchase Order')])[1]
${click2}    (//label[contains (text(), 'For Default Supplier (Optional)')])[2]
${create4}    (//button[contains (text(), 'Create')])[4]
${wait8}    //button[@data-label="Save"]
${save2}    //button[@data-label="Save"]
${xicon1}    (//button[@data-dismiss="modal"])[2]
${raw1}    //input[@data-fieldname="parent_group"]
${enter2}    //p[@title="Raw Material"]
${supplier1}    //input[@data-fieldname="supplier"]
${supplierid1}    //p[@title="S0002"]
${row1}    //p[@title="S0002"]
${date1}    (//input[@data-fieldtype="Date"])[3]
${click3}    //button[@class="btn btn-secondary btn-sm pull-right grid-collapse-row"]
${click4}    //button[@data-label="Save"]



*** Test Cases ***
Creation of a Purchase Order from a Material Request of type Purchase 16-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    purchase_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}


    Wait Until Page Contains Element    ${wait}  
    Click Element    ${stock}    #stock Module
    Sleep    3
    Wait Until Page Contains Element    ${wait1}   
    Click Element    ${mr}    # MR Doctype

    
    Wait Until Page Contains Element    ${wait2}
    Sleep    2
    Click Element    ${filter}    #Purpose filtering for pending status
    Click Element    ${purchase}    #purchase option
    Sleep    2
    Press Keys   ${pending}    pending
    Press Keys   ${enter}    ENTER
    

    Wait Until Page Contains Element    ${wait3}
    Click Link    ${mrid}     #mr id
    Sleep    5

    Wait Until Page Contains Element    ${wait4}
    Click Button    ${create}    #Create button
    Wait Until Page Contains Element    ${wait5}
    Click Element    ${create1}   #create button option PO
    Sleep    2

    Click Element    ${click}
    Sleep    2

    Click Button    ${createpop}    #Create button in supplier pop-up
    
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


    Click Element    ${supplier}    #supplier
    Sleep    2
    Click Element    ${supplierid}    #supplier id


    Click Element    ${open}    #Open row 1
    Sleep    2
    Input Text    ${date}    09-11-2023


    Execute JavaScript    ${java}
    Sleep    2
    Click Element    ${manu}    #Manufacturer field
    Sleep    2
    Click Element    ${manuid}    #Manufacturer id
    Sleep    2
    Click Element    ${manuadd}    #Manufacturer address

    # Sleep    2
    # Input Text    //input[@data-fieldname="rate"]    136    #rate field
    Sleep    2
    Click Button    ${click1}
    Sleep    2
    
    
    Click Button    ${save1}
    Go Back 
    Go Back



    # This is for partially ordered record
    Sleep    4
    # Click button    (//select[@data-fieldname="status"])[1]    #Purpose filtering for partially ordered status
    # Sleep    2
    Press Keys   ${partially}    Partially Orde
    Press Keys   ${partially1}    ENTER
    Sleep    2


    # Click Element    //select[@data-fieldname="material_request_type"]
    # Click Element    //option[@value="Purchase"]    #purchase option

    Click Link    ${link}    #Partially ordered record in MR


    Wait Until Page Contains Element    ${until}
    Sleep    5
    Click Button    ${create2}    #Create button
    Wait Until Page Contains Element    ${wait7}
    Click Element    ${create3}   #create button option PO
    Sleep    2   

    
    Click Element    ${click2}
    Sleep    2

    Click Button    ${create4}    #Create button in supplier pop-up
    
    Wait Until Page Contains Element    ${wait8}
    Sleep    5

    Click Button    ${save2}   #Save button for throw
    Sleep    2

    Click Button    ${xicon1}    #X Icon

    Sleep    2

    Press Keys    ${raw1}    raw material
    Sleep    3
    Press Keys    ${enter2}    ENTER
    Sleep    3


    Click Element    ${supplier1}    #supplier
    Sleep    2
    Click Element    ${supplierid1}    #supplier id


    Click Element    ${row1}    #Open row 1
    Sleep    2
    Input Text    ${date1}    09-11-2023

    # aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    # Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    # Sleep    2
    # Click Element    //input[@data-fieldname="manufacturer"]    #Manufacturer field
    
    # Click Element    //p[@title="M0002"]    #Manufacturer id
    # Sleep    2
    # Scroll Element Into View    //input[@data-fieldname="manufacturer_part_no"]
    # Click Button    //input[@data-fieldname="mfr_address_list"]    #Manufacturer address
    # Click Element    //p[@title="M0002-Billing"]
    # Sleep    2
    Click Button    ${click3}
    Sleep    2
  
    Click Button    ${click4}
    Go Back 
    Go Back
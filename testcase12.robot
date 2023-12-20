*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
To check the system ability for restriction of Manual Creation Stock Entry in eCapsule 14-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    stock_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    # stock module and MR
    Wait Until Page Contains Element    //span[@item-icon="stock"]  
    
    Sleep    2  
    Click Element    //span[@item-icon="stock"]
    Wait Until Page Contains Element    (//span[contains (text(), 'Purchase Receipt')])[2]
    Click Element    (//span[contains (text(), 'Purchase Receipt')])[2]

    Sleep    5
    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[1]

    Sleep    2
    Press Keys    //input[@data-fieldname="supplier"]    S0002
    Press Keys    //input[@data-fieldname="supplier"]    ENTER 

    Sleep    2
    Click Button    (//button[@data-toggle="dropdown"])[6]
    Sleep    3
    Click Element    //a[@data-label="Gate%20Entry"]
    Sleep    3
    
    Input Text    //input[@data-fieldname="search_term"]    478
    Sleep    2
    Click Element   //span[@title="S0002"]

    Sleep    2
    Click Element    //button[@class="btn btn-primary btn-sm btn-modal-primary"]  

    Sleep    2
    Input Text    //input[@data-fieldname="receiving_area"]    G001
    Sleep    2
    Press Keys    //input[@data-fieldname="receiving_area"]    ENTER
    Sleep    2
    Input Text    //input[@data-fieldname="invoice_no"]    6587
    Sleep    2
    Click Element    (//div[@class="row-index sortable-handle col"])[3]

    Sleep    5
    Input Text    //input[@data-fieldname="supplier_batch_no"]    83459    #Manufacturer no

    Sleep    2
    Input Text    //input[@data-fieldname="mfg_date"]    13-11-2023

    Input Text    //input[@data-fieldname="expiry_date"]    28-01-2024

    Press Keys    //input[@data-fieldname="container_type"]    Box
    Press Keys    //input[@data-fieldname="container_type"]   ENTER

    Input Text    //textarea[@data-fieldname="container_details"]    1*1
    Sleep    2
    Click Button    //button[@class="btn btn-secondary btn-sm pull-right grid-collapse-row"]
    Wait Until Page Contains Element    (//button[@class="btn btn-primary btn-sm primary-action"])[2]
    Click Button    (//button[@class="btn btn-primary btn-sm primary-action"])[2]

    Sleep    2
    Click Element    //li[@style="cursor: copy;"]        

    Sleep    2
    Click Element    //div[@title="Stock User"]
    Sleep    2
    Click Element    (//a[@class="dropdown-item"])[14]
    Sleep    2
    Click Element    ${loging}
    Input Text    ${mail}    gateentry_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    Sleep    5
    Press Keys    //a[@class="navbar-brand navbar-home"]    ENTER
    Wait Until Page Contains Element    //span[@item-icon="stock"]  
    Sleep    2 
    Click Element    //span[@item-icon="stock"]
    Sleep    2
    Click Element    //a[@title="Gate Entry"]

    Sleep    2
    Press Keys    //input[@data-fieldname="name"]    469
    Sleep    2
    Wait Until Page Contains Element    //a[@data-name="GE230469"]  
    Click Element    //a[@data-name="GE230469"]  
        
    Wait Until Page Contains Element    (//span[@class="hidden-xs actions-btn-group-label"])[3]
    Sleep    3
    Click Element    (//span[@class="hidden-xs actions-btn-group-label"])[3]
    Sleep    2
    Click Element    (//span[@data-label="Close%20GE"])[2]
    
    
    Sleep    2
    Go Back

    Sleep    4
    Click Button    //button[@title="Clear all filters"]
    Sleep    5
    Press Keys    //input[@placeholder="ID"]    270
    Sleep    2
    Click Element    //a[@data-name="GE230270"]
    Sleep    5
    # Click Button    (//span[@data-label="Actions"])[3]
    # Sleep    5
    # Click Element    (//span[@data-label="Cancel"])[2]

    # Go Back

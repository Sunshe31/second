*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${wait1}    //span[@item-icon="stock"]  
${stock}    //span[@item-icon="stock"]
${click}    //a[@href="/app/material-request"]
${wait2}    //select[@data-fieldname="material_request_type"]
${filter}    //select[@data-fieldname="material_request_type"] 
${materialissue}    //option[@value="Material Issue"]
${pending}    //option[@value="Material Issue"]
${enter}    (//select[@data-fieldname="status"])[1]
${wait3}    //div[@data-label="Create"]
${create1}    //button[@class="btn ellipsis btn-primary"]
${wait4}    //a[@data-label="Issue%20Material"]
${click1}    //a[@data-label="Issue%20Material"]
${click2}    //button[@data-label="Save"]
${submit1}    //button[@data-label="Submit"]
${wait5}    //button[@class="btn btn-primary btn-sm btn-modal-primary"]
${yes}    //button[@class="btn btn-primary btn-sm btn-modal-primary"]
${click3}    //button[@class="btn btn-default btn-sm filter-x-button"]
${moreinfo}    //a[@id="material-request-more_info_tab-tab"]
${click4}    (//div[@class="section-head collapsed"])[1]
${wait6}    //select[@data-fieldname="material_request_type"]
${filter1}    //select[@data-fieldname="material_request_type"]
${material}    //option[@value="Material Issue"]
${pending}    (//select[@data-fieldname="status"])[1]
${enter1}    (//select[@data-fieldname="status"])[1]
${create2}    //div[@data-label="Create"]
${create3}    //button[@class="btn ellipsis btn-primary"]
${wait7}    //a[@data-label="Issue%20Material"]
${wait8}    //a[@data-label="Issue%20Material"]
${click5}    //button[@data-label="Save"]
${submit2}    //button[@data-label="Submit"]
${wait9}    //button[@class="btn btn-primary btn-sm btn-modal-primary"]
${yes}    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[2]
${click6}    //button[@class="btn btn-default btn-sm filter-x-button"]
${click7}    //a[@id="material-request-more_info_tab-tab"]
${click8}    (//div[@class="section-head collapsed"])[1]




*** Test Cases ***
To check the system ability for restriction of Manual Creation Stock Entry in eCapsule 14-01
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    stock_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    

    # stock module and MR
    Wait Until Page Contains Element    ${wait1}
    Sleep    2  
    Click Element    ${stock}     #stock Module
    Sleep    3
    Click Link    ${click}    # MR Doctype


    #Filtering 
    Wait Until Page Contains Element    ${wait2}
    Sleep    2
    Click Element    ${filter}   #Purpose filtering for status
    Click Element    ${materialissue}    #Material Issue
    Sleep    2
    Press Keys   ${pending}   pending
    Press Keys   ${enter}    ENTER
    
    Sleep    2

    #Record number and creating the material issue
    Click Link    //a[@data-name="MAT-MR-2023-00433"]    #ne422

    Wait Until Page Contains Element    ${wait3}
    Click Button    ${create1}    #Create button

    Wait Until Page Contains Element    ${wait4}
    Click Element    ${click1}
    Sleep    2
    Click Button    ${click2}
    Sleep    2

    #submiting
    Click Button    ${submit1}    #submit button and throws
    Sleep    1
    Wait Until Page Contains Element    ${wait5}

    Click Button    ${yes}    #Yes button

    Go Back
    Go Back

    # Again opening same record , remove the filter to see the more Info
    Click Element    ${click3}
    Sleep    2
    Click Link    //a[@data-name="MAT-MR-2023-00433"]    
    Sleep    2
    Click Element    ${moreinfo}    #More Info
    Sleep    1
    Click Element    ${click4}
    Go Back

    #Again filetering for 2nd MR and Filtering the status
    Wait Until Page Contains Element    ${wait6}
    Sleep    2
    Click Element    ${filter1}    #Purpose filtering for status
    Click Element    ${material}    #Material Issue
    Sleep    2
    Press Keys   ${pending}    pending
    Press Keys   ${enter1}    ENTER

    Sleep    2

    #opening the 2nd record and create button for issue material 
    Click Link    //a[@data-name="MAT-MR-2023-00469"]    #n463

    Wait Until Page Contains Element    ${create2}
    Click Button    ${create3}    #Create button

    Wait Until Page Contains Element    ${wait7}
    Click Element    ${wait8}
    
    Click Button    ${click5}
    Sleep    2

    #Navigate to stock entry page
    Click Button    ${submit2}    #submit button and throws
    Sleep    1
    Wait Until Page Contains Element    ${wait9}

    Click Button    ${yes}    #Yes button
    
    Go Back
    Go Back

    #Clering the filter
    Click Element    ${click6}
    Sleep    2
    Click Link    //a[@data-name="MAT-MR-2023-00469"]
    Sleep    2
    Click Element    ${click7}    #More Info
    Sleep    1
    Click Element    ${click8}

    Go Back

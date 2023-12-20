*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Variables ***
${click}    //span[@item-icon="buying"]  
${click1}    (//span[contains (text(), 'Purchase Order')])[2]
${click2}    (//span[@class="filter-icon"])[1]
${workflow}    //input[@class="form-control input-xs"]
${enter}    //input[@class="form-control input-xs"]
${verify}    //input[@data-target="Workflow State"]
${enter}    //input[@data-target="Workflow State"]
${click3}    (//button[@class="btn btn-primary btn-sm"])[3]
${click4}    (//span[@data-label="Reject"])[2]

*** Test Cases ***
Verify the Rejection of Purchase Order 16-04
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    purchase_master_manager
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    
    Sleep    5
    Click Element    ${click}  
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

    Sleep    2
    Click Element    ${click1}
    Sleep    2
    Click Element    ${click2}
    
    Input Text    ${workflow}    Workflo
    Press Keys    ${enter}    ENTER
    Input Text    ${verify}    Veri
    Sleep    2
    Press Keys    ${enter}    ENTER
    Sleep    2
    # Click Button    //button[@class="btn btn-primary btn-xs apply-filters"]
    Click Link    //a[@data-name="PUR-ORD-2023-00191"]
    Sleep    2
    Click Element    ${click3}
    Click Element    ${click4}
    Close Browser
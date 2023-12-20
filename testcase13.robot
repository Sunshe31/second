*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
Delete Gate Entry record 003-05
    Open Browser    http://115.97.255.108:85/
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    gateentry_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}

    # stock module and gate entry
    Wait Until Page Contains Element    //span[@item-icon="stock"]
    Set Browser Implicit Wait    10
    Sleep    2  
    Click Element    //span[@item-icon="stock"]
    Click Element    //a[@title="Gate Entry"]
    

    Click Link    //a[@data-name="GE230041"]    #Draft
    Click Button    (//button[@data-original-title="Menu"])[3]
    Click Element    (//span[@data-label="Delete"])[2]
    Click Button    //button[@class="btn btn-primary btn-sm btn-modal-primary"]

    Sleep    5
    Press Keys    //input[@data-fieldname="name"]    GE230465
    Click Link    //a[@data-name="GE230465"]    #Cancelled
    Sleep    2
    Click Button    (//button[@data-original-title="Menu"])[3]
    Sleep    2
    Click Element    (//span[@data-label="Delete"])[2]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[2]
    

    Sleep    5
    Input Text    //input[@data-fieldname="name"]    483
    Click Link    //a[@data-name="GE230483"]    #Open
    Click Button    (//button[@data-original-title="Menu"])[3]
    Go Back

    Select Checkbox    //input[@data-name="GE230275"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm"])[2]
    Sleep    2
    Click Element    //span[@data-label="Delete"]
    Sleep    2
    Click Button    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[3]
    Sleep    2
    Click Button    (//button[@class="btn btn-modal-close btn-link"])[3]
    # Click Button    (//button[@class="btn btn-modal-close btn-link"])[1]


    Sleep    2
    Input Text    //input[@data-fieldname="name"]    270
    Click Link    //a[@data-name="GE230270"]    #Closed
    Click Button    (//button[@data-original-title="Menu"])[3]
    Go Back

    Sleep    2
    Select Checkbox    //input[@data-name="GE230270"]
    Click Button    (//button[@class="btn btn-primary btn-sm"])[2]
    Click Element    //span[@data-label="Delete"]
    Click Button    (//button[@class="btn btn-primary btn-sm btn-modal-primary"])[4]
    Sleep    2
    # Click Button    (//button[@class="btn btn-modal-close btn-link"])[2]
    # Click Button    (//button[@class="btn btn-modal-close btn-link"])[1]






    
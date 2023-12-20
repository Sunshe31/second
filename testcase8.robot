*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py
Variables    abspath/url.py
Variables    abspath/data.py

*** Test Cases ***
GXP
    Open Browser    http://115.97.255.108:85/    
    Maximize Browser Window
    Click Element    ${loging}
    Input Text    ${mail}    purchase_user
    Input Password    ${passw}    Asdqwe@123
    Click Button    ${log}
    # Handle Alert
    Wait Until Page Contains Element    ${searchpo}    5
    Wait Until Element Is Visible    ${searchpo}
    Input Text    ${searchpo}    Purchase Order
    Press Keys    ${enter}    ENTER
    Wait Until Element Is Visible    ${addpo}
    Click Button    ${addpo}
    Wait Until Element Is Visible    ${id}
    Click Element    ${id}
    # Wait Until Element Is Visible    ${raw}   
    Sleep    10 
    Click Element    ${raw}
    Wait Until Element Is Visible    ${supplier}
    Click Element    ${supplier}
    Wait Until Element Is Visible    ${sup}
    Click Element    ${sup}
    Click Button    ${addrow}
    Click Element    ${poid}
    Wait Until Element Is Visible    ${ran}
    Click Element    ${ran}

    Wait Until Page Contains Element    ${req}
    Sleep    5
    Press Keys    ${req}    08-11-2023
    Click Element    (//label[@class="control-label reqd"])[10]
  
    Press Keys    ${qty}    CTRL+A+BACKSPACE
    Input Text    ${qty}    60
    Wait Until Page Contains Element    (//div[@class="section-head"])[4]
    Click Element    (//div[@class="section-head"])[4]
    # Click Element    ${man}
    Click Element    ${man1}
    Wait Until Element Is Visible    ${man2select}
    Click Element    ${man2select}
    Click Element    ${man3}
    Wait Until Element Is Visible    ${man4select}
    Click Element    ${man4select}
    Click Element    ${man5}
    
    Scroll Element Into View    ${saved}
    Click Button    ${saved}
    Sleep    2
    Close Browser

*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${xpath}    //input[@name="Email"] 
${data}    aishu

*** Test Cases ***
Validate
    Open Browser    https://dashboard.getsauce.com/    edge
    Maximize Browser Window
    Input Text    ${xpath}    ${data}
    ${text}    Get Value    ${xpath}
    Log    ${text}
    Should Be Equal    ${text}    ${data}
    
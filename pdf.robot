*** Settings ***
Library    RPA.PDF
Library    SeleniumLibrary

*** Variables ***
${PDF}    newpdf01.pdf
${WEBPAGE}    https://www.saucedemo.com/
${BROWSER}    edge

*** Keywords ***
keyword
    Open Browser    ${WEBPAGE}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
AutomateWithPDF
    keyword
    Open PDF    ${PDF}
    ${dict}    Get Text From PDF
    
    ${pdftext}    Set Variable    ${dict[1]}    #1 defines as key 
    
    
    FOR    ${counter}    IN RANGE    0    5
    ${username}    Set Variable    ${pdftext.split('\n')[${counter}]}
    ${password}    Set Variable    ${pdftext.split('\n')[${counter}]}
    
    
    Log     ${username}
    Log     ${password}
    
    
    Input Text    //input[@placeholder="Username"]    ${username}
    Input Password    //input[@placeholder="Password"]    ${password}
    Click Button    //input[@id="login-button"]
    Execute JavaScript    window.open('https://www.saucedemo.com/')
    Switch Window    NEW   
    
    END
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
sauce log
    Open Browser    https://dashboard.getsauce.com/    chrome    
    Maximize Browser Window
    Get Element Size    //input[@name="Email"] 
    Execute Javascript    document.body.style.zoom= "40%"
    Input Text    //input[@name="Email"]    aishu32
    Textfield Value Should Be    //input[@name="Email"]    aishu
    Sleep    2
    Input Password    //input[@name="Password"]    Asdqwe@123
    Textfield Value Should Be    //input[@name="Password"]    Asdqwe@123
    Sleep    2
    Click Button    //button[@type="submit"]
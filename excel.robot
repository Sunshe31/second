*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary

*** Keywords ***
Select Worksheet
    Open Excel Document    robotframework.xlsx    doc_id
Open Browser in sause  
    Open Browser    https://www.saucedemo.com/    edge

*** Test Cases ***
Login with Excel Data
    Select Worksheet
    Open Browser in sause
    Maximize Browser Window

        FOR    ${element}    IN RANGE    1    5
        ${username}=    Read Excel Cell    ${element}    1
        ${password}=    Read Excel Cell    ${element}    2
       
        Log    ${element}

        Input Text    //input[@placeholder="Username"]    ${username}
        Input Password    //input[@placeholder="Password"]    ${password}

        Click Button    //input[@id="login-button"]
        Execute JavaScript    window.open('https://www.saucedemo.com/')
        Switch Window    New
        END
        

    # FOR    ${element}    IN    ${username}
    #     ${user}    Set Variable    ${element[0]}
    #     ${pass}    Set Variable    ${element[1]}
    #     Input Text    //input[@placeholder="Username"]    ${user}
    #     Input Password    //input[@placeholder="Password"]    ${pass}
    #     Click Button    //input[@id="login-button"]
    #     Execute JavaScript    window.open('https://www.saucedemo.com/')
    #     Switch Window    New
    # END


    # FOR    ${element}    IN    ${password}
    #     ${user}    Set Variable    ${element[0]}
    #     ${pass}    Set Variable    ${element[1]}
    #     Input Text    //input[@placeholder="Username"]    ${user}
    #     Input Password    //input[@placeholder="Password"]    ${pass}
    #     Click Button    //input[@id="login-button"]
    #     Execute JavaScript    window.open('https://www.saucedemo.com/')
    #     Switch Window    New
    # END


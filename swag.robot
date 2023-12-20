*** Settings ***
Library    SeleniumLibrary
Variables    abspath/url.py
Variables    abspath/data.py
Variables    abspath/xpath.py

*** Variables ***
# @{details}    standard_user    locked_out_user
# @{passdetail}    secret_sauce   
# @{logins}    //input[@id="login-button"]

@{details}    standard_user    locked_out_user    problem_user    performance_glitch_user
@{passdetail}    ${passdata}   
@{logins}    ${logins}

*** Keywords ***
Userdefined
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window

*** Test Cases ***
New Testcase
    Userdefined
        
    FOR    ${element}    IN   @{details} 
      ${value}    Set Variable    ${element}
      Input Text    //input[@placeholder="Username"]    ${value}
      Input Password    //input[@placeholder="Password"]    @{passdetail}
      Click Button    @{logins}
      Execute JavaScript    window.open('https://www.saucedemo.com/')
      Switch Window    New
      Log To Console    ${element}
    END
    



    # FOR    ${element}    IN   @{details}    @{passdetail}
    #   Input Text    //input[@placeholder="Username"]    @{details}
    #   Input Password    //input[@placeholder="Password"]    @{passdetail}
    #   Click Button    @{logins}
    #   Execute JavaScript    window.open('https://www.saucedemo.com/')
    #   Switch Window    New
    #   Log To Console    ${element}
        
    # END

    # Input Text    ${username}    ${userdata}
    # Input Text    ${password}    ${passdata}
    # Click Button    ${login}
    # Execute JavaScript    window.open('https://www.saucedemo.com/')
    # Switch Window    New
    # Go To    ${url}
    # Input Text    ${username1}    ${userdata1}
    # Input Text    ${password1}    ${passdata1}
    # Click Button    ${login1}





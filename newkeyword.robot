*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables    abspath/xpath.py
Variables    abspath/url.py
# Variables    abspath/data.py

*** Variables ***
@{components}    ${computer}    ${electronic}    ${apparel}    ${digital}    ${books}    ${jewelry}    ${gift}

*** Keywords ***
nopcommerce
    Open Browser    ${url}    ${chromedata}
    Maximize Browser Window

*** Test Cases ***
nopcommerce Keywords
    nopcommerce
    FOR    ${element}    IN    @{components}
        Click Link    ${element}
        # Capture Page Screenshot
    END
    Execute Javascript    window.open('https://demo.nopcommerce.com/')
    Switch Window    New
    Input Text    ${search}    ${phones}
    Click Button    ${clicksearch}
    Select Checkbox    ${Advance}
    Select From List By Index    ${cellphone}    ${cellphonedata}
    Select Checkbox    ${automatic}
    Select From List By Value    ${manufacture}    2
    Select Checkbox    ${check}
    Scroll Element Into View    ${scroll}
    Click Element    ${decription}
    

   
  
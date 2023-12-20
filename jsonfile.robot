*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Variables    abspath/xpath.py
Variables    abspath/data.py
Variables    abspath/url.py

*** Test Cases ***
JSON for Swag Page

    Open Browser    ${url1}
    Maximize Browser Window
    ${path}    Load Json From File    json.json   
    ${element}    Get Value From Json    ${path}    name
    ${element1}    Get Value From Json    ${path}    password
    Input Text    ${username}    ${element}[0]
    Input Password    ${password}    ${element1}[0]
    Click Button    ${login1}

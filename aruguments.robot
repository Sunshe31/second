*** Settings ***

Library    SeleniumLibrary
Variables    abspath/url.py
Variables    abspath/data.py
Variables    abspath/xpath.py

*** Test Cases ***
Browser
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window
    Input Text    ${firstname}    ${firname}
    Input Text    ${lastname}    ${laname}


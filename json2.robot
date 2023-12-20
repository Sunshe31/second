*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary

*** Test Cases ***
JSON SAMPLE
    ${path}    Load Json From File    json.json

        ${username}    Get Value From Json    ${path}    name
        ${password}    Get Value From Json    ${path}    password
        IF    ${username} != ${password}
            Log    ${path}
        END
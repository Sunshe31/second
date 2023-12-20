*** Settings ***
Library    String
Library    BuiltIn

*** Test Cases ***
Randomstring

    ${name}    Generate Random String
    Log    ${name}
    ${count}    Get Length    ${name}
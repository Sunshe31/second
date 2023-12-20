*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String

*** Test Cases ***
Dictionaries
    ${create}    Create Dictionary    key="sunshe"
    ${value}    Get From Dictionary    ${create}    key
    ${convert}    Convert To String    ${value}
    ${replace}    Replace String    ${value}    "sunshe"    'sunshe'
    Log    ${replace}

NEW
    ${create}    Create Dictionary    key="aishu"
    ${value}    Get From Dictionary    ${create}    key
    ${convert}    Convert To String    ${value}
    ${ast}    Evaluate    [ast.literal_eval('${convert}')]
    Log    ${ast}

again using format string
    ${ast}    Set Variable    aishu
    # ${ast}    Evaluate    ast.literal_eval(f"'aishu'")
    ${new}    Replace String    ${ast}    aishu    'aishu'
    Log    ${ast}
    
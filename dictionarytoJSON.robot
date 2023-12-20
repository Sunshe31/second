*** Settings ***
Library    Collections
Library    String

Library    RPA.JSON
Library    JSONLibrary


*** Variables ***
${value1}    New
${value2}    Open
${value3}    Close
${onclick1}    CreateNewDoc()
${onclick2}    OpenDoc()
${onclick3}    CloseDoc()

*** Test Cases ***
Using Robot Framework creating dictionary to get output in JSON format

    ${dict}    Create Dictionary    value=${value1}    onclick=${onclick1}
    ${dict1}    Create Dictionary    value=${value2}    onclick=${onclick2}   
    ${dict2}    Create Dictionary    value=${value3}    onclick=${onclick3}
    ${menuitem}    Create List    ${dict}    ${dict1}    ${dict2}
    ${create}    Create Dictionary    menuitem=${menuitem}
        
    ${menu}    Create Dictionary    id=file    value=File    popup=${create}
    ${output}    Create Dictionary    menu=${menu}
    ${str}    Convert To String    ${output}
    ${replace}    Replace String    ${str}    '    "
    Log    ${replace}

#OUTPUT
#{"menu": {
#     "id":"file",
#     "value":"File",
#     "popup": {
#             "menuitem": [
#                         {"value":"New", "onclick": "CreateNewDoc()"},
#                         {"value":"Open", "onclick":"OpenDoc()"},
#                         {"value":"Close", "onclick":"CloseDoc()"}    
#                         ]
#              }
#          }}
JSON
    ${load}    JSONLibrary.Load Json From File    json1.json
    Log    ${load}
    ${str}    Convert To String    ${load}
    ${repl}    Replace String    ${load}    '    "
    Log    ${repl}
    JSONLibrary.Convert String To Json    ${repl}

JSON1 
    
    ${dict}    Create Dictionary    value=${value1}    onclick=${onclick1}
    ${dict1}    Create Dictionary    value=${value2}    onclick=${onclick2}   
    ${dict2}    Create Dictionary    value=${value3}    onclick=${onclick3}
    ${menuitem}    Create List    ${dict}    ${dict1}    ${dict2}
    ${create}    Create Dictionary    menuitem=${menuitem}
        
    ${menu}    Create Dictionary    id=file    value=File    popup=${create}
    ${output}    Create Dictionary    menu=${menu}
    # ${convert}    Convert To String    ${output}
    ${ast}    Evaluate    json.dumps($output)    json
    Log    ${ast}
    
    
# Json Library
    
    # ${json}    JSONLibrary.Load Json From File    json1.json
    # FOR    ${counter}    IN    ${json}
    #     ${value}    Get values from JSON    ${json}    value
    #     ${onclick}    Get values from JSON    ${json}    onclick
    #     Log    ${value}    
    # END

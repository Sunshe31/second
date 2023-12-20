*** Settings ***
Library    ExcelLibrary
Library    SeleniumLibrary
Library    String



*** Keywords ***
Select Worksheet
    Open Excel Document    excelofall.xlsx    doc_id

*** Test Cases ***
Testcase1
    Select Worksheet
    ${no}    Read Excel Row    11
    ${na}    Read Excel Column    2
    Log    ${no}
    Log    ${na}
    
Testcase2
    FOR    ${counter}    IN RANGE    1    16
    
        ${set}    Evaluate    "Ragavan${counter}"
        ${1}    Evaluate    "Muthu${counter}"
        ${2}    Evaluate    "Ishwarya${counter}"
        ${3}    Evaluate    "XXXXXX${counter}"
        ${4}    Evaluate    "YYYYYY${counter}"
        ${5}    Evaluate    "ZZZZ${counter}"
        ${6}    Evaluate    "dummy1${counter}"
        ${7}    Evaluate    "dummy2${counter}"
        ${8}    Evaluate    "dummy3${counter}"
        ${9}    Evaluate    "dummy4${counter}"
        ${10}    Evaluate    "dummy5${counter}"
        ${11}    Evaluate    "dummy6${counter}"
        ${12}    Evaluate    "dummy7${counter}"
        ${13}    Evaluate    "dummy8${counter}"
        ${14}    Evaluate    "dummy9${counter}" 
    END


Testcase3
    Get Length    excelofall.xlsx

Testcase112

    FOR    ${counter}    IN RANGE    1    16
    ${exce}    Read Excel Cell    1    1
    ${ev}    Evaluate    "${exce}${counter}"
    Log    ${ev}
    END
    
    
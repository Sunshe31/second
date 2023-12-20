*** Settings ***

Library    ExcelLibrary
Library    SeleniumLibrary
Library    String

*** Keywords ***

Select Worksheet
    Open Excel Document    excelofall.xlsx    doc_id

*** Test Cases ***
Testacse1

    Select Worksheet
    ${no}    Read Excel Row    10
    Log    ${no}

Testcase2

    Get Length    excelofall.xlsx

Testcase3

    FOR    ${counter}    IN RANGE    1    16
    ${exce}    Read Excel Cell    ${counter}    2
    ${ev}    Catenate    "${exce}${counter}"
    Log    ${ev}
    END

Testcase4

    ${nu}    Read Excel Row    17
    Log    ${nu}

Testcase5

    ${row}    Read Excel Row    10
    ${row1}    Read Excel Row    20
    ${test}    Catenate    ${row}    ${row1}   

Testcase6

    FOR    ${counter}    IN RANGE    1    20   
    ${ce}    Read Excel Cell    ${counter}    2
    Log    ${ce}
    END

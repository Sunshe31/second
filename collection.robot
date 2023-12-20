*** Settings ***
Library    Collections

*** Variables ***
@{list1}    a
@{list2}    b
&{dictionary}    key1=Sunshe    key2=Aishwarya
&{dictionary1}    key1=Sunshe    key2=Aishwarya

*** Test Cases ***
Collection Library
    Append To List    @{list1}    a
    Append To List    @{list1}    b
 
Combine Lists
    ${combine}    Combine Lists    ${list1}    ${list2}
    Log    ${combine}
    
Convert To Dictionary
    ${dict}    Convert To Dictionary     ${list1}
    Log    ${dict}

Convert To List
    ${lis}    Convert To List    ${list2}
    Log    ${lis}

Copy Dictionary
    ${copy}    Collections.Copy Dictionary    &{dictionary}
    Log    ${copy}    

Copy List    
    ${copylist}    Copy List    ${list1}
    Log    ${copylist}

Count Values in list
    ${value}    Count Values In List    ${list1}    a
    Log    ${value}

Dictionaries Should Be Equal
    Dictionaries Should Be Equal    &{dictionary}    &{dictionary1}    ignore_keys=['key1','key2']
    # Log    ${equal}

Dictionary Should Contain Item
    Dictionary Should Contain Item    &{dictionary}    key1=Sunshe    key2=Aishwarya
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{a}    30
@{b}    20

*** Test Cases ***
Test    
   IF    ${a} > ${b}
        Log    ${a} is greater than ${b}
   END
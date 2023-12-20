*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${str1}    Automation 
${str2}    Test
    

*** Test Cases ***
login
    
    ${str3}    Convert To Upper Case    ${str1}
    ${str4}    Convert To Lower Case    ${str2}
    Log    ${str1}    
    Log    ${str2}
*** Settings ***
Library    SeleniumLibrary
Library    RPA.PDF

*** Test Cases ***
PDF Testcases
    Open Pdf    A.SUNSHE AISHWARYA PDF 208050043.pdf
    ${number}    Get Number Of Pages
    Log    ${number}
    Find Text    A.SUNSHE AISHWARYA PDF 208050043
    ${rotate}    Rotate Page    1
    Log    ${rotate}
    ${pdf}    Is Pdf Encrypted
    Log    ${pdf}
    ${dump}    Dump Pdf As Xml
    Log    ${dump}
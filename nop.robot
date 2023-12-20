*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
nophrm
    Open Browser    https://demo.nopcommerce.com/    chrome
    Click Element    //a[contains (text(), 'Register')]
    Click Element    //input[@id="gender-female"]
    Input Text    //input[@id="FirstName"]    aishu
    Input Text    //input[@id="LastName"]    a
    Click Element    //select[@name="DateOfBirthDay"]
    Click Element    //option[@value="31"]
    Click Element    //select[@name="DateOfBirthMonth"]
    Click Element    (//option[@value="3"])[2]
    Click Element    //select[@name="DateOfBirthYear"]
    Click Element    //option[@value="2003"]
    Input Text    //input[@id="Email"]    aishu@gmail.com
    Input Text    //input[@id="Company"]    archimedis
    Input Password    //input[@id="Password"]    yhshyudsmndyuer7y
    Input Password    //input[@id="ConfirmPassword"]    yhshyudsmndyuer7y
    Click Button    //button[@id="register-button"]

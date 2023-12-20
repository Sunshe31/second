*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Keywords ***
Phptravel
    Open Browser    https://phptravels.org/register.php
    Maximize Browser Window
    Input Text    //input[@id="inputFirstName"]    aishu
    Input Text    //input[@id="inputLastName"]    a
    Input Text    //input[@id="inputEmail"]    aishu@gmail.com
    Click Element    //div[@title="Pakistan (‫پاکستان‬‎): +92"]
    Click Element    //li[@data-dial-code="91"]
    Input Text    //input[@id="inputPhone"]    8745984678
    Input Text    //input[@id="inputCompanyName"]    archimedis
    Input Text    //input[@id="inputAddress1"]    Nehru Street
    Input Text    //input[@id="inputAddress2"]    mudichur
    Input Text    //input[@id="inputCity"]    chennai
    Input Text    //input[@id="stateinput"]    tamil nadu
    Input Text    //input[@id="inputPostcode"]    600048
    Click Element    //option[@value="IN"]
    Input Text    //input[@id="customfield2"]    457093265
    Input Password    //input[@id="inputNewPassword1"]    asdfghytrewq12345
    Input Password    //input[@id="inputNewPassword2"]    asdfghytrewq12345
    Wait Until Page Contains Element    //input[@type="submit"]
    Click Element    //span[contains (text(), 'Yes')]
    Click Element    //input[@type="submit"]

*** Test Cases ***
Phptravel
    Phptravel
    Close Browser
    
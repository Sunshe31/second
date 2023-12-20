*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NOP Commerce
    Open Browser    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F    chrome
    Click Element    //button[@type="submit"]
    Click Element    locator(//button[@type="button"])[5]
    Click Element    (//a[@class="small-box-footer"])[1]
    Click Element    (//span[@unselectable="on"])[1]
    Click Element    (//a[@title="Monday, October 2, 2023"])[1]
    Click Button    (//span[@unselectable="on"])[2]
    Click Element    //a[@title="Thursday, October 5, 2023"]
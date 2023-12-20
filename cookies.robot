*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Add Cookies
    Open Browser    https://www.cookie-checker.com/    chrome
    # Get Cookie    https://www.cookie-checker.com/
    Add Cookie    name    value
    
    Sleep    10
    
    # Delete Cookie    foo
    
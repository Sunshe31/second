*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#newuserlogin
   # Click Element    //a[@href="/contact"]
   # Capture Page Screenshot
    #Sleep    2    
    #Click Element    //a[@href="/blog"]
    #Capture Page Screenshot
    #Sleep    2
    #Click Element    //a[@href="/product"]
    #Capture Page Screenshot  
    #Sleep    2

*** Variables ***

@{xyz}    //a[@href="/contact"]    //a[@href="/blog"]    //a[@href="/product"]

*** Test Cases ***
Ecapsule
    Open Browser    http://115.97.255.108/#login    chrome

    FOR    ${element}    IN    @{xyz}
        Wait Until Page Contains Element   xpath=${element}
        Click Element    xpath=${element}
        Sleep    2
        Capture Page Screenshot 
    END
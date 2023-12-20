*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Variables    abspath/url.py
Variables    abspath/data.py
Variables    abspath/xpath.py

*** Keywords ***
[Arguments]    ${url}
[Arguments]    ${chrome}
*** Test Cases ***
Tech List
    Open Browser     ${url}    ${chrome}
    Maximize Browser Window
    # Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
  
    # Wait Until Page Contains Element   //input[@name="firstname"]     10
    # Input Text    //input[@name="firstname"]    Aishu
    # Textfield Value Should Be    //input[@name="firstname"]    Aishu

    # Input Text    //input[@name="lastname"]    a
    # Textfield Value Should Be    //input[@name="lastname"]    a

    # Wait Until Page Contains Element    //input[@Value="Male"]
    # Click Element    //input[@Value="Male"]

    # Click Element    //input[@id="exp-1"]

    # Input Text    //input[@id="datepicker"]    03/10/2023
    # Textfield Value Should Be    //input[@id="datepicker"]    03/10/2023
    
    # Scroll Element Into View    //input[@name="photo"]
    # Select Checkbox    //input[@id="profession-1"]
    # Checkbox Should Be Selected    //input[@id="profession-1"]

    # Select Checkbox    //input[@id="tool-2"]
    # Checkbox Should Be Selected    //input[@id="tool-2"]    

    # Scroll Element Into View    //button[@id="submit"]
    # Click Element    //select[@id="continents"]
    # Click Element    //option[contains (text(), 'South America')]
    # Click Element    //option[contains (text(), 'Wait Commands')]

    # Choose File    //input[@id="photo"]    ${EXECDIR}/string.robot
    # Wait Until Page Contains Element    //button[@id="submit"]
    # Click Button    //button[@id="submit"]

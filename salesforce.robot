*** Settings ***
Library    SeleniumLibrary
Library    DateTime


*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${chrome}    chrome


*** Keywords ***
DEMO
    Run Keyword    Input Text    id=name    aishu
    
    Input Text    id=email    aishu@gmail.com

    Input Text    //input[@id="Wikipedia1_wikipedia-search-input"]    Test Cases
    Click Button    //input[@class="wikipedia-search-button"]


    Click Button    //button[@onclick="myFunction()"]
    Location Should Be    https://testautomationpractice.blogspot.com/
    Sleep    3s
    Capture Page Screenshot


    Input Text    id=phone    98387328366
    Input Text    id=textarea   nehru street

    Select Radio Button    gender    value=female


    Click Button    //button[@onclick="myFunctionAlert()"]
    Handle Alert    Accept
    Click Button    //button[@onclick="myFunctionConfirm()"]
    Handle Alert    Accept
    Click Button    //button[@onclick="myFunctionPrompt()"]    
    Handle Alert    Accept


    Select Checkbox    id=monday
    # Press Keys    id=field1    CTRL+A+BACKSPACE
    Clear Element Text    id=field1
    Sleep    5
    Input Text    id=field1    Aishwarya


    Double Click Element    //button[@ondblclick="myFunction1()"]


    Scroll Element Into View    id=colors
    Click Element    //select[@id="country"]
    Capture Page Screenshot


    Click Element    //option[contains (text(), 'India')]
    SeleniumLibrary.Drag And Drop    id=draggable    id=droppable
    Click Element    //option[@value="white"] 
    Sleep    3


    Drag And Drop By Offset    id=slider    0    5
    Get Current Date


    Click Link    //a[@href="https://demo.opencart.com/"]
    Go Back
    Click Link    //a[@href="https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"]
    Go Back


    Scroll Element Into View    id=HTML1
    
    Select Frame    id=HTML6
    Input Text    //input[@id="RESULT_TextField-0"]    aishu
    Click Element    id=RESULT_RadioButton-1_0
    Get Current Date
    Click Element    value=Radio-0
    Unselect Frame



    Scroll Element Into View    id=pagination
    Mouse Over    //div[@class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se"]
    Mouse Down    //div[@class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se"]
    
    # # ${mouse}    Get WebElement    id=resizable
    # # Execute Javascript    argument[0].style.height = '317px';    ${mouse}
    # # Execute Javascript    argument[0].style.width = '200px';    ${mouse}
    # Sleep    10
    


*** Test Cases ***
Sales Force
    Open Browser    ${url}    ${chrome}
    Get Window Size    
    # Maximize Browser Window
    Run Keyword    DEMO


sample Testing
    Open Browser    https://testautomationpractice.blogspot.com/    ${chrome}
    Maximize Browser Window
    
    Scroll Element Into View    id=HTML1
    Sleep    3
    # Wait Until Keyword Succeeds    9x    9    Scroll Element Into View    id=RESULT_TextField-0
    Press Keys    //input[@id="RESULT_TextField-0"]    hsgcsdgdsuh
    # Sleep    3
    # Close Browser

    
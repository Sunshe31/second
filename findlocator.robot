*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${right}    //button[@type="submit"] 
${wrong}    //button[@typ="submit"] 

*** Test Cases ***
Find Locator
    Open Browser    https://dashboard.getsauce.com/    chrome    
    Maximize Browser Window
    Scroll Element Into View    ${right}
    Page Should Contain Button    //button[@type="submit"] 
    IF    $right != 'None'
        Click Button    ${right}
    ELSE
        Close Browser
    END

 # Run Keyword If    '${right}' != '${wrong}'
    # ...        Click Button    ${right}
    # ...      ELSE    
    # ...        Close Browser 
 
    
    # ${if}    Run Keyword    Element Should Be Visible    ${right}
    # Run Keyword If    ${if}    Click Button    ${right}
    
    # ${else}    Run Keyword    Element Should Not Be Visible    ${wrong}
    # Run Keyword If    ${else}    Close Browser

Browser Aliases
    Open Browser    https://dashboard.getsauce.com/    alias= chrome
    # Open Browser    https://google.com/    alias= chrome 
    ${browse}    Get Browser Aliases
    Log    ${browse}
    FOR    ${alias}    IN    @{browse}
        Log    ${alias}
    END



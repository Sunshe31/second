*** Settings ***
Library    RPA.PDF
Library    RPA.Browser.Selenium
Library    RPA.Tables
Library    RPA.JavaAccessBridge
Library    RPA.Smartsheet
Library    Collections
Library    json
Library    String
Library    RPA.SAP



*** Test Cases ***

test

    Open Pdf    robotframeworkpdflibrary1.pdf

    ${pdf} =    Get Text From Pdf
    Log    ${pdf}

    @{usernames_and_passwords}    Split String    ${pdf}
    Log    @{usernames_and_passwords}

    FOR    ${i}    IN RANGE    0    2
        ${username}    Get From List    ${usernames_and_passwords}    ${i}
        ${password}    Get From List    ${usernames_and_passwords}    ${i+1}

        Open Browser    https://www.saucedemo.com/
        Input Text    //input[@placeholder="Username"]    ${username}
        Input Password    //input[@placeholder="Password"]    ${password}
    END

example
    Open Pdf    robotframeworkpdflibrary1.pdf
    ${pdf} =    Get Text From Pdf
    Log    ${pdf}
    ${convert}    Convert To String    ${pdf}    
    @{usernames_and_passwords}    Split String    ${convert}    \n
    Log    @{usernames_and_passwords}

    FOR    ${i}    IN RANGE    0   6 
        ${username}    Get Table Row    ${usernames_and_passwords}    ${i}
        ${password}    Get Table Column    ${usernames_and_passwords}    ${i}

        Open Browser    https://www.saucedemo.com/
        Input Text    //input[@placeholder="Username"]    ${username}
        Input Password    //input[@placeholder="Password"]    ${password}
    END

pdf sample

    Open Pdf    robotframeworkpdflibrary1.pdf
    
    ${pdf}    Get Text From Pdf
    Log    ${pdf}

    ${con}    Convert To String    ${pdf}
    Log    ${con}    
    
    ${list}    Split String    ${pdf}    user 
    Log    ${list}

    ${username}  Get from List  ${list}  1
    ${password}  Get from List  ${list}  2
    

    FOR    ${counter}    IN RANGE    0    2    
        Log    ${counter}
        
        Open Browser    https://www.saucedemo.com/    
        Input Text    //input[@placeholder="Username"]    ${username}
        Input Password    //input[@placeholder="Password"]    ${password}
    END
    
example2
    FOR    ${counter}    IN RANGE    0    7
        ${table} =    Read Table    ${counter}
        ${numrows} =    Get Table Row    ${table}    ${counter}
        
        FOR    ${rowindex}    IN RANGE    0    ${numrows}
            ${username} =    RPA.Tables.Get Table Cell    ${table}    ${rowindex}    0
            ${password} =    RPA.Tables.Get Table Cell    ${table}    ${rowindex}    1
            
            Open Browser    https://www.saucedemo.com/
            Input Text    //input[@placeholder="Username"]    ${username}
            Input Password    //input[@placeholder="Password"]    ${password}
            
        END

    END

example 3

        FOR    ${counter}    IN RANGE    1    7 
        ${table}    Read Table    ${counter}
        Log    ${table}

        ${username}    Get Table Row    ${counter}    0
        ${password}    Get Table Column    ${counter}    1

        ${uname}    RPA.Tables.Get Table Cell    ${table}    ${counter}    0
        ${pass}    RPA.Tables.Get Table Cell    ${table}    ${counter}    1
        
        Open Browser    https://www.saucedemo.com/
        Input Text    //input[@placeholder="Username"]    ${username}
        Input Password    //input[@placeholder="Password"]    ${password}

    END
    
    
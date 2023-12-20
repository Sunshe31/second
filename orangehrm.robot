*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    firefox
${usernamenew}    //input[@name="username"]  
${user}    Admin
${password}    //input[@name="password"]
${pass}    admin123
${login}    //button[@type="submit"]
${username1}    //input[@name="username"]  
${username1data}    Adminddsds
${password1}    //input[@name="password"]
${passvalid1data}    admin123
${login1}    //button[@type="submit"]


*** Keywords ***

#Positive and Negative Scenarious

Launch orangehrm url 
    System should open the orangehrm
System should open the orangehrm
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${usernamenew}
Enter valid Username in Username field
    System should allow user to enter the username
System should allow user to enter the username
    Input Text    ${usernamenew}    ${user}
 Enter valid Password in Password field
    System should allow user to enter the password
System should allow user to enter the password
    Input Password    ${password}    ${pass}
Click on Login button
    System should open the orangehrm homescreen
System should open the orangehrm homescreen
    Click Button    ${login}
    Close Browser
Enter incorrect username and valid password
    System should allow to enter the username and password

Launch again orangehrm for invalid Credentials
    System should open the orangehrm url again
    Close Browser

System should open the orangehrm url again
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${usernamenew}

System should allow to enter the username and password
    Input Text    ${username1}    ${username1data}
    Input Password    ${password1}    ${passvalid1data}
Click on Login button
    Notification should be displayed indicating that Invalid Credentials
Notification should be displayed indicating that Invalid Credentials
    Click Button    ${login1}

*** Test Cases ***
Test
# Step no 1
    [Tags]    positive01
    System should open the orangehrm
    System should allow user to enter the username
    System should allow user to enter the password
    System should open the orangehrm homescreen
    

Test1
# Step no 2 for Negative Scenarious
    [Tags]    negative01robo
    System should open the orangehrm url again
    System should allow to enter the username and password
    Notification should be displayed indicating that Invalid Credentials
    

*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${log}    Hello
${wo}    World
${new}    !!

*** Test Cases ***
Hello
    FOR    ${element}    IN    ${log} ${wo} ${new}
    Log To Console   ${element}
    
    END
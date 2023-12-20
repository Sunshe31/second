*** Settings ***
Library    String

*** Variables ***
@{a}    I    Sunshe
@{b}    Am    Aishwarya
${xpath}    //*id[@id="{a-b}"]

*** Test Cases ***
For Loop
    
    FOR    ${name}    ${name1}    IN ZIP    ${a}    ${b}
        ${list}    Format String    ${xpath}    a-b=${name}-${name1}
        Log    ${list}
    END
name
    FOR    ${name}    ${name1}    IN ZIP    ${a}    ${b}
        Log    ${name} - ${name1}
    END


nested for loop

    FOR    ${element}    IN    @{a}    
        FOR    ${special}    IN    @{b}
            Log    ${element}${special}
        END    
    END

*** Settings ***
Library    String
Library    json

*** Variables ***
${string}    apple, banana, orange, apple
${lowercase}    APPLE, BANANA, ORANGE
${stripstring}    This is sunshe aishwarya 

*** Test Cases ***
Split String
    ${split}    Split String    ${string}    ,
    Log    ${split}

Convert To Upper Case and Should Be Upper Case
    ${upper}    Convert To Upper Case    ${string}
    Log    ${upper}
    Should Be Upper Case    ${upper}

Replace String 
    ${replace}    Replace String    ${string}    apple    grapes
    Log    ${replace}

Replace String Using Regexp
    ${Regexp}    Replace String Using Regexp    ${string}    string    number
    Log    ${Regexp}

Remove String Using Regexp 
    ${removeregex}    Remove String Using Regexp    ${string}    apple
    Log    ${removeregex}

Split String To Characters
    ${character}    Split String To Characters    ${string}    
    Log    ${character}
 
Strip String
    ${strip}    Strip String    ${stripstring}    
    Log    ${strip}

Get Regexp Matches 
    ${regex}    Get Regexp Matches    ${string}    a
    Log    ${regex}
 
Generate Random String
    ${generate}    Generate Random String    5-10
    Log    ${generate}

Get Lines Containing String
    ${line}    Get Lines Containing String    ${string}    apple
    Log    ${line}

Convert To Lower Case and Should Be Lower Case
    Log    ${lowercase}
    ${lower}    Convert To Lower Case    ${lowercase}
    Log    ${lower}
    Should Be Lower Case    ${lower}

Convert To Title Case and Should Be Title Case
    ${convert}    Convert To Title Case    ${stripstring}
    Log    ${convert}
    Should Be Title Case    ${convert}

Fetch From Right
    ${right}    Fetch From Right    ${stripstring}    ${SPACE}
    Log    ${right}

Fetch From Left
    ${left}    Fetch From Left    ${stripstring}    ${SPACE}
    Log    ${left}

Get Lines Matching Pattern
    ${match}    Get Lines Matching Pattern    ${string}    ${stripstring}    
    Log    ${match}

Get Line Count
    ${count}    Get Line Count    ${string}
    Log    ${count}

Get Substring
    ${sub}    Get Substring    ${stripstring}    0    19
    Log    ${sub}
    Should Be String    ${stripstring}

Get Lines Matching Regexp
    ${regexpmatch}    Get Lines Matching Regexp    ${string}    ${lowercase}    
    Log    ${regexpmatch}

# 26 completed 
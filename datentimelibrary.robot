*** Settings ***
Library    DateTime

*** Variables ***
${date}     2023-01-01
${timee}    12:05:03.111

*** Test Cases ***
Date and Time Library
    ${time}    Add Time To Date    ${date}    ${timee}
    Log    ${time}

Add Time To Time    
    ${add}    Add Time To Time    1 minute    42
    Log    ${add}

Convert Date
    ${con}    Convert Date    20230331 120503111
    Log    ${con}

Convert Time
    ${contime}    Convert Time    1:00:01
    Log    ${contime}

Get Current Date
    ${cur}    Get Current Date    
    Log    ${cur}

Subtract Date From Date
    ${sub}    Subtract Date From Date    ${date}    2022-01-02 
    Log    ${sub}

Subtract Time From Date
    ${subtr}    Subtract Time From Date    ${date}    ${timee}
    Log    ${subtr}

Subtract Time From Time
    ${timetotime}    Subtract Time From Time    ${timee}    11:53:56
    Log    ${timetotime}

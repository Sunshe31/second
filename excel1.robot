*** Settings ***
Library    SeleniumLibrary
Library    RPA.Excel.Files

*** Test Cases ***
Excel
    Create Workbook    Newworkbook   
    Set Cell Value    1    1    Sunshe
    Set Cell Value    2    2    Aishwarya 
    ${cell}    Get Cell Value    1    1
    ${cells}    Get Cell Value    2    2
    Log    ${cell}        
    Log    ${cells}
    Save Workbook
    
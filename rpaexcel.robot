*** Settings ***
Library    RPA.Excel.Files

*** Variables ***
@{list}    abc

*** Test Cases ***
Creating a Workbook
    Create Workbook    Aishwarya.xlsx
    FOR    ${element}    IN    @{list}
        Set Cell Values    A1    ${element}
        Log    ${element}
    END
    Save Workbook

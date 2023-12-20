*** Settings ***
Library    RPA.PDF
Library    RPA.Crypto

*** Test Cases ***
Bank statement
    
    ${pdf}    Open Pdf    bank.pdf
    
    ${password}    Generate Key

    ${use}    Use Encryption Key   ${password}
    Log    ${use}
    
    Encrypt pdf    ${pdf}    ${password}

    ${get}    Get Text From Pdf  
    Log    ${get}
    
Bank Statemnt 1

    ${password}    Generate Key
    ${pdf_content}    Open Pdf    bank.pdf

    ${use}    Use Encryption Key   ${password}
    Log    ${use}

    Encrypt pdf    ${pdf_content}    ${password}

    ${get}    Get Text From Pdf
    Log    ${get}


Bank Statement 2

    ${pdf_path}    Set Variable    bank.pdf    #source 
    ${output_path}    Set Variable    bankof.pdf    #destination

    ${password}    Generate Key
    ${pdf_content}    Open Pdf    ${pdf_path}

    ${use}    Use Encryption Key   ${password}
    Log    ${use}
    
    Encrypt pdf    ${pdf_content}    ${password}

    Log    Encrypted PDF saved to: ${output_path}
    Log    Password for the encrypted PDF: ${password}

    ${get}    Get Text From Pdf
    Log    ${get}
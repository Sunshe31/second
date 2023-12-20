*** Settings ***
Library    SeleniumLibrary
Library    RPA.Word.Application

*** Test Cases ***
Open
    Open Application    
    Create New Document
    Set Header    HI ALL
    Write Text    Hi Sunshe Aishwarya How are you? 
    ${doc}    Save Document As    @robotfile
    Close Document
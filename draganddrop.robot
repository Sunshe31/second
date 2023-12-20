*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Drag and Drop 
    Open Browser    https://the-internet.herokuapp.com/drag_and_drop    chrome
    Drag And Drop    //div[@id="column-a"]    //div[@id="column-b"]    
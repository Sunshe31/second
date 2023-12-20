*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Keys Press
    Open Browser    https://the-internet.herokuapp.com/key_presses?    chrome
    Maximize Browser Window
    Press Keys    //input[@id="target"]    ENTER
    Press Keys    //input[@id="target"]    TAB
    Press Keys    //input[@id="target"]    ALT
    Press Keys    //input[@id="target"]    DELETE
    Press Keys    //input[@id="target"]    SHIFT
    Press Keys    //input[@id="target"]    CTRL
    Press Keys    //input[@id="target"]    SPACE
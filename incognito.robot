*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
incognito
    # Open Browser    https://www.google.com/    firefox    options=add_argument("--incognito")
    Open Browser    https://www.google.com/    firefox    options=add_argument("--private")
    Open Browser    https://www.google.com/    edge    options=add_argument("--inprivate")




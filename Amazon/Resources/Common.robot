*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  firefox
    Maximize Browser Window

End Web Test
    Close Browser
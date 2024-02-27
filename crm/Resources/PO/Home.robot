*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =      Customers Are Priority One!



*** Keywords ***
Navigate To
    go to   ${URL}

Verify page loaded
        wait until page contains    ${HOME_HEADER_LABEL}
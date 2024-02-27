*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

*** Variables ***
${CUSTOMER_SIGNED_OUT} =        Signed Out

*** Keywords ***
Verify page loaded
        wait until page contains    ${CUSTOMER_SIGNED_OUT}
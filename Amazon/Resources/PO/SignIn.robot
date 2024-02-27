*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains    Amazon Sign-In

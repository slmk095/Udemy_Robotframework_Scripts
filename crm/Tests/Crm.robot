*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/CrmApp.robot

Test Setup  Begin Web Test
Test Teardown    End Web Test
#Run the script:
#robot -d results tests/crm.robot

*** Variables ***

${BROWSER} =      firefox
${URL} =    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =      admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =    qwe

*** Test Cases ***
Home page should load
    [Documentation]    Test the Home page
    [Tags]             1001     smoke       Home
    CrmApp.Go to "Home" page

Should be able to Login with valid credentials
    [Documentation]    Test the Login
    [Tags]             1002    smoke       Login
    CrmApp.Go to "Home" page
    CrmApp.Login with valid credentials       ${VALID_LOGIN_EMAIL}      ${VALID_LOGIN_PASSWORD}

Should be able to Log out
    [Documentation]    Test the Log out
    [Tags]             1004   smoke       Logout
    CrmApp.Go to "Home" page
    CrmApp.Login with valid credentials       ${VALID_LOGIN_EMAIL}      ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]    Test adding a new customer!
    [Tags]             1006   smoke       Contacts
    CrmApp.Go to "Home" page
    CrmApp.Login with valid credentials       ${VALID_LOGIN_EMAIL}      ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out
*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

*** Variables ***
${CUSTOMERS_HEADER_LABEL} =    Our Happy Customers
${CUSTOMERS_ADD_CUSTOMER_lINK} =     id=new-customer
${CUSTOMERS_ADDED_SUCCESS} =     Success! New customer added

*** Keywords ***
Verify page loaded
        wait until page contains        ${CUSTOMERS_HEADER_LABEL}

Click Add Customer Link
        click link          ${CUSTOMERS_ADD_CUSTOMER_lINK}

Verify Customer Added successfully
        wait until page contains     ${CUSTOMERS_ADDED_SUCCESS}

*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary


*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =           Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =          Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =          id=EmailAddress
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =     id=FirstName
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =      id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =           id=City
${ADDCUSTOMER_STATE_DROPDOWN} =         id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIO} =           gender
${ADDCUSTOMER_PROMO_CHECKBOX} =         name=promos-name

*** Keywords ***
Verify page loaded
        wait until page contains        ${ADDCUSTOMER_HEADER_LABEL}
Add New Customer
        Fill Customer Fields
        Click Submit Button

Fill Customer Fields
         input text              ${ADDCUSTOMER_EMAIL_TEXTBOX}           kriass@gmail.com
    input text                   ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}      kria
    input text                   ${ADDCUSTOMER_LAST_NAME_TEXTBOX}       ss
    input text                   ${ADDCUSTOMER_CITY_TEXTBOX}            Helsinki
    select from list by label    ${ADDCUSTOMER_STATE_DROPDOWN}          N/A
    select radio button          ${ADDCUSTOMER_GENDER_RADIO}            female
    select checkbox              ${ADDCUSTOMER_PROMO_CHECKBOX}

Click Submit Button
    click button                 ${ADDCUSTOMER_SUBMIT_BUTTON}
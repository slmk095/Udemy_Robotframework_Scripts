*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains     RASTAR Ferrari Remote Control Car


Add to Cart
    Click Button  id=add-to-cart-button
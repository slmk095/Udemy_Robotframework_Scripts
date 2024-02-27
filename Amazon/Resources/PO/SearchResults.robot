*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "Ferrari 458"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link   RASTAR Ferrari Remote Control Car, 1/24 Scale Ferrari 458 Italia Model Car, Red Ferrari Toy Car
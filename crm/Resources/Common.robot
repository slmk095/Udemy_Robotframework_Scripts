*** Settings ***
Library         SeleniumLibrary




*** Keywords ***
Begin Web Test
     [Documentation]         This is some basic info about the test
    [Tags]                  1006    Smoke   Contacts
    #Initialize selenium
   #set selenium speed      .2s
    #set selenium timeout    10s
    open browser            about:blank       ${BROWSER}


    #resize browser window for recording
    #set window position    x=341      y=169
    #set window size        width=1935  height=1090
End Web Test
    close all browsers
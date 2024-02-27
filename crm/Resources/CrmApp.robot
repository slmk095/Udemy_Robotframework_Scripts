*** Settings ***
Resource        ../Resources/PO/Home.robot
Resource        ../Resources/PO/TopNav.robot
Resource        ../Resources/PO/AddCustomer.robot
Resource        ../Resources/PO/Customers.robot
Resource        ../Resources/PO/SignIn.robot
Resource        ../Resources/PO/LoggedOut.robot





*** Keywords ***
Go to "Home" page
    Home.Navigate To
    Home.Verify page loaded

Login with valid credentials
    [Arguments]             ${Email}       ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify page loaded
    SignIn.Login with valid credentials     ${Email}       ${Password}
    Customers.Verify page loaded

Add New Customer
    customers.click add customer link
    AddCustomer.Verify page loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added successfully

Sign Out
    TopNav.Click "sign out" link
    LoggedOut.Verify page loaded
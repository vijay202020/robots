*** Settings ***
Documentation    Regression Suite
Resource   ../Pages/SigninRegisterPage.robot
Resource  ../Pages/HomePage.robot



Suite Setup       Open ebay
#Suite Teardown    Close Browser

*** Variables ***

${sumbitbutton} =  id: ppaFormSbtBtn

*** Test Cases ***

Register user
    Click on Register
    Enter Firstname
    Enter Lastname
    Enter Email
    Enter Password
    element should be enabled  ${sumbitbutton}





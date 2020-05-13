*** Settings ***
Documentation    Regression Suite
Resource  ../Resources/Pages/HomePage.robot
Resource  ../Resources/Pages/SignInPage.robot



Suite Setup       Open ebay
Suite Teardown    Close Browser

*** Variables ***


*** Test Cases ***
Valid Login
    Click on Sign in
    Enter Username
    Click Continue button







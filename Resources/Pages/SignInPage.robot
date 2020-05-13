*** Settings ***
Documentation    Sign In Page
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${Username}=   JohnSmith

*** Keywords ***
Enter Username
    input text  css: #userid       ${Username}

Click Continue button
    click element  css: #signin-continue-btn
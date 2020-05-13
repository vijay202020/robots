*** Settings ***
Documentation    Register Page
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Enter Firstname
    input text  css: #firstname         Auto

Enter Lastname
    input text  css: #lastname          Tester

Enter Email
    input text  css: #email             testerautomation56@gmail.com

Enter Password
    input text  css: #PASSWORD          Tester2020

Click Submitbutton
    click element  id: ppaFormSbtBtn
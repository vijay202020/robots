*** Settings ***
Documentation    Regression Suite
Resource         Resources/Pages/HomePage.robot


Suite Setup       Open ebay
Suite Teardown    Close Browser

*** Variables ***
${searchResult} =    //h1[@class='srp-controls__count-heading'][contains(text(),'laptop')]
@{Windowtitle} =   Get Window Titles


*** Test Cases ***

Valid Search
    [Tags]    DEBUG
    input text  id: gh-ac   Laptop
    click element  id: gh-btn
    run keyword if      @{Windowtitle} == 'Laptop | ebay'    should be true


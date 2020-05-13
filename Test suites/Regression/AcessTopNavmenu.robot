*** Settings ***
Documentation    Regression Suite
Resource  ../Resources/Pages/HomePage.robot


Suite Setup       Open ebay
Suite Teardown    Close Browser

*** Variables ***
${breadcrumbs} =    //span[@class='b-breadcrumb__text b-link--tertiary truncate'][contains(text(),'Cameras')]

*** Test Cases ***

Access Cameras section
    [Tags]    DEBUG
    Hover over Electronics
    Click on camera
    Page should contain element  ${breadcrumbs}


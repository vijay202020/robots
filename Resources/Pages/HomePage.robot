*** Settings ***
Documentation    HomePage Page
Library    SeleniumLibrary
Library    OperatingSystem
Resource      Resources/Common/Global Variables.robot

*** Keywords ***
Open ebay
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}      add_argument  --disable-infobars
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    maximize browser window
    Go To    ${URL}

Login to ebay
    click element  //*[@id="gh-ug"]/a
    click button    Log in
    sleep   3s

Click on Register
    click element  css: #gh-ug-flex > a

Click on Sign in
    click element  css: #gh-ug > a

Hover over Electronics
    mouse over  css: #mainContent > div.hl-cat-nav > ul > li:nth-child(6) > a
    wait until element is visible  css: #mainContent > div.hl-cat-nav > ul > li:nth-child(6) > div.hl-cat-nav__flyout > div.hl-cat-nav__sub-cats > div:nth-child(2) > ul > li:nth-child(2) > a

Click on camera
    click element  //a[@class='hl-cat-nav__js-link'][contains(text(),'Cameras')]

Enter Search term
    input text  id: gh-ac   Laptop


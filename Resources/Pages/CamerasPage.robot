*** Settings ***
Documentation    Cameras Page
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${DSLRCCam} =       //div[contains(text(),'DSLR Cameras')]
${CameraDRONE} =    //div[contains(text(),'Camera Drones')]

*** Keywords ***
Click on DSLR Camera
    wait until page contains element  ${DSLRCCam}
    click element  ${DSLRCCam}

Click on Camera Drone
    wait until page contains element  ${CameraDRONE}
    click element  ${CameraDRONE}

*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
Login TC
    open browser    https://opensource-demo.orangehrmlive.com    chrome
    maximize browser window
    input text    id=txtUsername    Admin
    input text    id=txtPassword    admin123

    Capture Element Screenshot    xpath=//*[@id="divLogo"]/img    logo2.png
    Capture Page Screenshot    Page.png

    Capture Element Screenshot    xpath=//*[@id="divLogo"]/img    /Users/anrisawada/20projects/automation-robot/Logo.png
    Capture Page Screenshot    /Users/anrisawada/20projects/automation-robot/LoginTC.png

    close browser

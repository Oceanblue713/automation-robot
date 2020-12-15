*** Settings ***
Library    SeleniumLibrary

*** Test Case ***
Test Frames
    open browser    https://www.selenium.dev/selenium/docs/api/java/overview-summary.html    chrome
    maximize browser window
    click link    Frames

    select frame    packageListFrame
    click link    org.openqa.selenium
    unselect frame
    sleep    2s

    select frame    packageFrame
    click link   Wait
    unselect frame
    sleep    2s

    select frame    classFrame
    click link    Help
    unselect frame
    sleep    2s

    close browser
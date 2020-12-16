*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
TabbedWindows Test
    open browser    http://demo.automationtesting.in/Windows.html    chrome
    click button    click    
    select window    title=SeleniumHQ Browser Automation
    click link    Projects
    sleep    2s
    close all browsers
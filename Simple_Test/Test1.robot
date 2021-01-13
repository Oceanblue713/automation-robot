*** Settings ***
LIbrary    SeleniumLibrary


*** Test Case ***
Test Case 1
    Open Browser    https://robotframework.org/    chrome
    Close Browser

Test Case 2
    Open Browser    https://opensource-demo.orangehrmlive.com/    firefox
    Input Text    id=txtUsername    Admin
    Close Browser
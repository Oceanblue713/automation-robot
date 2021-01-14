*** Settings ***
LIbrary    SeleniumLibrary

*** Variable ***
${url}    https://opensource-demo.orangehrmlive.com/

*** Test Case ***
Test Case 1
    Open Browser    ${url}    chrome
    Close Browser

Test Case 2
    Open Browser    ${url}    firefox
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Close Browser
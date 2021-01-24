*** Settings ***
LIbrary    SeleniumLibrary

*** Variable ***
${url}    https://opensource-demo.orangehrmlive.com/
@{Credentials}    Admin    admin123
&{Login}    Username=Admin    Password=admin123

*** Test Case ***
Test Case 1
    Open Browser    ${url}    chrome
    Close Browser

Test Case 2
    Open Browser    ${url}    firefox
    #Input Text    id=txtUsername    @{Credentials}[0]
    Input Text    id=txtUsername    &{Login}[Username]
    #nput Password    id=txtPassword    @{Credentials}[1]
    Input Password    id=txtPassword    &{Login}[Password]
    Click Button    id=btnLogin
    Close Browser

    Log To Console    %{username} ran this test on %{os}%
    Log To Console    ${TEST NAME}

Test Case 3
    Open Browser    ${url}    chrome
    Login    
    Close Browser

*** Keywords ***
Login
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
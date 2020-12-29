*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}    chrome

*** Keywords ***
Open My Browser
    open browser    ${LOGIN URL}    ${BROWSER}

Close Browsers
    close all browsers

Open Login Page
    go to    ${LOGIN URL}

Input Username  
    [Arguments]    ${username}

    input text    id=Email    ${username}

Input Password
    [Arguments]    ${password}

    input text    id=Password    ${password}

Click Login Button
    Click Button    xpath=//input[@value='Log in']

Click Logout Link 
    Click Link   Logout

Error Message Should be Visible
    page should contain    Login was unsuccessful

Dashboard Page should be Visible 
    page should contain    Dashboard

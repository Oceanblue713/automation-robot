*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${SiteUrl}    ${Browser}

    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}     ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginpassword}     ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Successful Login
    title should be    Login: Mercury Tours

Close My Browsers
    close all Browsers

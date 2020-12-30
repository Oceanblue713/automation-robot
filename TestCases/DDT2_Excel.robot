*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1

Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Case ***
Login Test with Excel
    Invalid Login    ${username}    ${password}


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}

    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should be Visible
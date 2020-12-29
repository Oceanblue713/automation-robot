*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot 
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Case ***
Correct Username and Empty Password    admin@yourstore.com    ${EMPTY}
Correct Username and Wrong Password    admin@yourstore.com    xyz
Wrong Username and Correct Password    dmin@yourstore.com    admin
Wrong Username and Empty Password    dmin@yourstore.com    ${EMPTY}
Wrong Username and Wrong Password    dmin@yourstore.com    xyz


*** Keywords ***    username    password
Invalid Login 
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password       ${password}
    Click Login Button
    Error Message Should be Visible
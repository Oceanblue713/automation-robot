*** Settings ***
Library    SeleniumLibrary
Resource    Test1.robot
Suite Setup    Log To Console    Test Suite Started
Suite Teardown    Log To Console    Test Suite End

*** Variable ***
${url}    https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
Test Case 1
    Go To Home Page

*** Keywords ***
Go To Home Page
    Open Browser    ${url}    chrome
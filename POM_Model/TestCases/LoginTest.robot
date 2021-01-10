*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variable ***
${Browser}    headlessfirefox
${SiteUrl}    http://demo.guru99.com/test/newtours/
${user}    tutorial
${pwd}    tutorial

*** Test Case ***
Login Test
    Open My Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter Password      ${pwd}
    Click SignIn
    sleep    2s
    Verify Successful Login
    Close My Browsers

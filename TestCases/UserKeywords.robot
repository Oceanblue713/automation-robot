*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variable ***
${URL}    http://demo.guru99.com/test/newtours/
${BROWSER}    chrome

*** Test Case ***
Test Case 1
    ${PageTitle}    Launch Browser    ${URL}    ${BROWSER}
    Log To Console    ${PageTitle}
    Log     ${PageTitle}
    input text    name=userName    mercury
    input text    name=password    mercury

    close browser

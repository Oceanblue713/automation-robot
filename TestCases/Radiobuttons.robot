*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Case ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    2seconds

    # Select Radio button
    select radio button    sex    Female
    select radio button    exp    5

    # Select Check Box
    select checkbox    BlackTea
    select checkbox    RedTea

    unselect checkbox    BlackTea
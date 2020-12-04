*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Case ***
Handling Dropdowns and Lists
    open browser    ${url}    ${browser}
    maximize browser window

    select from list by label    continents    Australia
    sleep    2s
    select from list by index    continents    6

    #select from list by value    continents    value

    #List box
    select from list by label    selenium_commands    Switch Commands
    select from list by label    selenium_commands    Browser Commands
    sleep    2s

    unselect from list by label    selenium_commands    Switch Commands
    sleep    2s
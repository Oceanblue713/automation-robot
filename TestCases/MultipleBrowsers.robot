*** Settings ***
Library    SeleniumLibrary

*** Test Case ***
Multiple Browsers Test
    open browser    https://www.google.com/    chrome
    maximize browser window

    sleep    2s

    open browser    https://www.bing.com/    chrome
    maximize browser window

    switch browser    1
    ${title1}    get title
    Log To Console    ${title1}

    switch browser    2
    ${title2}    get title
    Log To Console    ${title2}

    sleep    2s
    close all Browsers

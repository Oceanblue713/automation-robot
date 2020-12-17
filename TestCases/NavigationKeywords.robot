*** Settings ***
Library    SeleniumLibrary

*** Test Case ***
Navigation Test
     open browser    https://www.google.com    chrome
     ${location}    get location
     Log To Console    ${location}

     sleep    2s

     go to    https://www.bing.com
     ${location}    get location
     Log To Console    ${location}

     sleep    2s

     go back
     sleep    2s
     close browser

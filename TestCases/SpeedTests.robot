*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
Register Test

    ${speed}    get selenium speed
    Log To Console    ${speed}

    open browser    http://demowebshop.tricentis.com/register    chrome
    maximize browser window

    #sleep    3s
    set selenium speed    1s

    select radio button   Gender    M 
    input text    name=FirstName    John
    input text    name=LastName   Doe
    input text    name=Email    john.doe@mail.com
    input text    name=Password    password
    input text    name=ConfirmPassword    password

    ${speed}    get selenium speed
    Log To Console    ${speed}

    close browser

*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
Register Test
    open browser    http://demowebshop.tricentis.com/register    chrome
    maximize browser window

    ${implicittime}    get selenium implicit wait 
    Log To Console    ${implicittime}

    set selenium implicit wait    10s

    ${implicittime}    get selenium implicit wait
    Log To Console    ${implicittime}
    
    select radio button    Gender    M
    input text    name=FirstName1    John
    input text    name=LastName   Doe
    input text    name=Email    john.doe@mail.com
    input text    name=Password    password
    input text    name=ConfirmPassword    password
    close browser

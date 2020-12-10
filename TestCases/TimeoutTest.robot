*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
Register Test
    open browser    http://demowebshop.tricentis.com/register    chrome
    maximize browser window
    ${time}    get selenium timeout
    log to console    ${time}
    
    set selenium timeout    10 s
    wait until page contains    Registration    #default 5seconds

    select radio button   Gender    M 
    input text    name=FirstName    John
    input text    name=LastName   Doe
    input text    name=Email    john.doe@mail.com
    input text    name=Password    password
    input text    name=ConfirmPassword    password
    close browser

*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    https://demo.nopcommerce.com

*** Test Case ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath=//a[@href='/login?returnUrl=%2F']

    ${"email_txt"}    Set Variable   id:Email
    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}

    #element should should not be visible    ${"email_txt"}

    Input text    ${"email_txt"}    john@email.com
    sleep    5s
    clear element text    ${"email_txt"}
    Sleep    3s
    close browser

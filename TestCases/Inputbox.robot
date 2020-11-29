*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    https://demo.nopcommerce.com

*** Test Case ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    


*** Keywords ***

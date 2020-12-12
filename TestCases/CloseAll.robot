*** Settings ***
Library    SeleniumLibrary

*** Variable ***


*** Test Case ***
My Test Case
    open browser    http://demowebshop.tricentis.com/register    chrome
    maximize browser window

    open browser    http://automationpractice.com/index.php    chrome
    maximize browser window

    #close browser
    close all browsers

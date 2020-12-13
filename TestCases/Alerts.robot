*** Settings ***
Library   SeleniumLibrary

*** Test Case ***
Handle Alerts
    open browser    http://testautomationpractice.blogspot.com    chrome
    click element    xpath=//button[.='Click Me']

    handle alert    accept
    sleep    2s

    click element    xpath=//button[.='Click Me']
    handle alert    dismiss
    sleep    2s

    click element    xpath=//button[.='Click Me']
    handle alert    leave
    sleep    2s
    Alert should be present    Press a button!
    #Alert should not be present    Press a button!

    close browser
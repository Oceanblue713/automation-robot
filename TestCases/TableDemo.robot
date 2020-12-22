*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
Table Validations
    open browser    http://testautomationpractice.blogspot.com/    chrome
    maximize browser window

    ${rows}    get element count    xpath=//table[@name='BookTable']/tbody/tr
    ${columns}    get element count    xpath=//table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${columns}

    ${data}    get text    xpath=//table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}

    close browser
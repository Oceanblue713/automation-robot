*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Launch Browser
    [Arguments]    ${appurl}    ${appbrowser}

    open browser    ${appurl}    ${appbrowser}
    maximize browser window
    ${title}    get title

    [Return]    ${title} 
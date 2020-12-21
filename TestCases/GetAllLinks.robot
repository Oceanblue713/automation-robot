*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
Get All Links Test
    open browser    http://ww7.demoaut.com/    chrome
    maximize browser window
    ${AllLinksCount}    get element count    xpath=//a
    Log To Console    ${AllLinksCount}

    @{LinkItems}    Create List

    FOR    ${i}    IN RANGE    1    ${AllLinksCount} + 1
        ${LinkText}    Get Text    xpath=(//a)[${i}]
        Log To Console    ${LinkText}
    END

    close browser
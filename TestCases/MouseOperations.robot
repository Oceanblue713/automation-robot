*** Settings ***
Library    SeleniumLibrary

*** Test Case ***
Mouse Actions
    # Right click/open context
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu    xpath=/html/body/div/section/div/div/div/p/span
    sleep    2s

    #Double click action
    go to    http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath=//*[@id="HTML10"]/div[1]/button
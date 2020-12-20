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
    sleep    3s

    #Drag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id=box6    id=box106
    sleep    2s

    close browser

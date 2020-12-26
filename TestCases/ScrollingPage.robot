*** Settings ***
Library    SeleniumLibrary


*** Test Case ***
Scrolling Test
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    maximize browser window
    #execute javascript    window.scrollTo(0, 2500)

    #scroll element into view    xpath=//table[1]/tbody/tr[95]
    execute javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    2s
    execute javascript    window.scrollTo(0, -document.body.scrollHeight)
    
    close browser

*** Settings ***
Library    SeleniumLibrary

*** Test Case ***
Test4
  [Tags]    Test4    sanity
  
  Log To Console    Test Started
  Open Browser    https://www.google.com    chrome
  Close All Browsers
  Log To Console    Test4 completed
  Set Tags    SmokeTest
  Remove Tags    SmokeTest

  # robot -d Results --settag=Smoke Test

*** Settings ***
Suite Setup    Log To Console    Opening Browser 
Suite Teardown    Log To Console  Closing Browser

Test Setup    Log To Console    Login To Application
Test Teardown    Log To Console    Logout From Application


*** Test Case ***
Test Case 1 Prepaid Recharge
    Log To Console    This is prepaid recharge test case 1

Test Case 2 Postpaid Recharge 
    Log To Console    This is prepaid recharge test case 2

Test Case 3 Search
    Log To Console  This is Search Test Case 

Test Case 4 Advanced Search
    Log To Console    This is an Advanced Search

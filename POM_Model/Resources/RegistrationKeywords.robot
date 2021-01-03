*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${SiteUrl}    ${Browser}

    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Click Register Link
    Click Link    ${link_Reg}

Enter FirstName
    [Arguments]    ${FirstName}

    Input Text    ${txt_firstName}    ${FirstName}

Enter LastName
    [Arguments]    ${LastName}

    Input Text    ${txt_lastName}    ${LastName}

Enter Phone
    [Arguments]    ${phone}

    Input Text    ${txt_phone}    ${phone}

Enter Email
    [Arguments]    ${email}

    Input Text  ${txt_email}    ${email}

Enter Address
    [Arguments]    ${address}

    Input Text    ${txt_add1}    ${address}

Enter City 
    [Arguments]     ${city}

    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]    ${state}

    Input Text    ${txt_state}    ${state}

Enter Postal Code
    [Arguments]    ${postalCode}

    Input Text    ${txt_postCode}    ${postalCode}

Select Country
    [Arguments]    ${country}

    Select From List By Label    ${drp_country}    ${country}

Enter UserName 
    [Arguments]    ${username}

    Input Text    ${txt_userName}    ${username}

Enter Password
    [Arguments]    ${password}

    Input Text    ${txt_password}    ${password}

Enter Confirmed Password
    [Arguments]    ${confirmedPassword}

    Input Text    ${txt_confirmedPassword}    ${confirmedPassword}

Click Submit Button
    Click Button    ${btn_submit}

Verify Successful Registration
    Page Should Contain    Thank you for registering.

Close My Browsers
    Close All Browsers

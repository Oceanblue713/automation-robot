*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variable ***
${Browser}    headlesschrome
${SiteUrl}    http://demo.guru99.com/test/newtours/
# robot TestCases/Reg*.robot
# robot TestCases/*.robot  
# pabot --processes 2 TestCases/*.robot
# pabot --processes 2 --outputdir Results TestCases/*.robot

*** Test Case ***
Registeration Test
    Open My Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    John
    Enter LastName    Doe 
    Enter Phone    222-2333-4444
    Enter Email    john.doe@email.com
    Enter Address    1122
    Enter City    BC
    Enter State    CUBA
    Enter Postal Code    77777
    Select Country    CUBA
    Enter UserName    xyz
    Enter Password    password1
    Enter Confirmed Password    password1
    Click Submit Button
    Verify Successful Registration
    Close My Browsers

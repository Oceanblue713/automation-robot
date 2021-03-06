*** Settings ***
# robot --includee=sanity TestCases/Tagging.robot
# robot --include=regression TestCases/Tagging.robot
# robot -i sanity -i regression TestCases/Tagging.robot
# robot -i sanity -e regression TestCases/Tagging.robot
# robot -e sanity -i regression TestCases/Tagging.robot

*** Test Case ***
Test Case 1 User Registration Test
    [Tags]    regression

    Log To Console    This is user reg test
    Log To Console    User Registration is done

Test Case 2 Login Test
    [Tags]    sanity

    Log To Console    This is Login Test
    Log To Console    Login Test is done

Test Case 3 Change User Settings
    [Tags]    regression

    Log To Console    This is changeing user setting test
    Log To Console    Change user settting test is done

Test Case 4 Logout Test
    [Tags]    sanity
    Log To Console    This is Logout Test
    Log To Console    Logout test is done


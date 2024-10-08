*** Settings ***
Library    SeleniumLibrary
Library    DataDriver       ../TestData/data_login.csv    #Data driven testing
Resource    ../Resources/resources_loginPage.robot
Test Template       Valid Login Tests
Test Teardown    CloseBrowserWindow


*** Test Cases ***      username        password
LoginTestWithCSV    using       ${username}     and     ${password}

*** Keywords ***
Valid Login Tests
    [Arguments]     ${username}     ${password}
    UserLogin       ${username}     ${password}





*** Settings ***
Library    PuppeteerLibrary
Variables    ../PageObjects/Locators.py
Resource    ../Resources/excel.robot

*** Variables ***
${DEFAULT_BROWSER}=    chrome
${url_maintest_login}=    'your-url'
${url_main_login}=    'your-url'
${url_maintest_menu}=    'your-url'
${url_maintest_welfare}=    'your-url'
*** Keywords ***
Open Login Page
    &{options} =    create dictionary   headless=${False}
    Open Browser    ${url_maintest_login}   browser=chrome    options=${options}
Enter Login
    #import username and password by excel test data
    ${username_value}=     Get Username
    ${password_value}=    Get Password
    [Arguments]    ${row} 
    Run Async Keywords 
    ...    Wait Until Page Contains Element    ${txt_loginUsername}    20s   AND
    ...    Input Text    ${txt_loginUsername}    ${username_value[${row}]}[1]
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${txt_loginPassword}    20s    AND
    ...    Input Text    ${txt_loginPassword}    ${password_value[${row}]}[1]
    Run Async Keywords
    ...    Wait Until Element Is Enabled    ${btn_signIn}    20s    AND
    ...    Click Button    ${btn_signIn}
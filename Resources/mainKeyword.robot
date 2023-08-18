
*** Settings ***
Library    PuppeteerLibrary 
Variables    ../PageObjects/Locators.py
 
*** Keywords ***
Enter Diary Menu
    Run Async Keywords
    ...    Click Element    ${btn_dairyMenu}    AND
    ...    Wait Until Page Contains Element    ${btn_dairyMenu}    20s
    
Enter Welfare Menu
    Run Async Keywords
    ...    Click Element    ${btn_welfareMenu}    AND
    ...    Wait Until Page Contains Element    ${btn_welfareMenu}    20s
    
Enter WelfareDoc Menu
    Run Async Keywords
    ...    Click Element    ${btn_welfareDocMenu}    AND
    ...    Wait Until Page Contains Element    ${btn_welfareDocMenu}    20s

Enter WelfareDoc Page
    Enter Diary Menu
    Enter Welfare Menu
    Enter WelfareDoc Menu
    Switch Window    NEW
    Wait For Navigation    timeout=30s
   
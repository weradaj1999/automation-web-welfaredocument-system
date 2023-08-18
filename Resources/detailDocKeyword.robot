
*** Settings ***
Library    PuppeteerLibrary 
Variables    ../PageObjects/Locators.py
 
*** Keywords ***

# Cancle Document
Click Cancle Document
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_cancleDoc}    10s    AND
    ...    Click Element    ${btn_cancleDoc}
Click Confirm Cancle Document
    Run Async Keywords
    ...    Wait Until Page Contains Element   ${btn_confirmCancleDoc}    10s    AND
    ...    Click Element    ${btn_confirmCancleDoc}

# Backward Document
Click Backward Document
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_backwardDoc}    10s    AND
    ...    Click Element    ${btn_backwardDoc} 
    
Click Confirm Backward Document
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_confirmBackwardDoc}    10s    AND
    ...    Click Element    ${btn_confirmBackwardDoc}

# Delete Document
Click Delete Document
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_deleteDoc}    10s    AND
    ...    Click Element    ${btn_deleteDoc}

Click Confirn Delete Document
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_confirmDeleteDoc}   10s    AND
    ...    Click Element    ${btn_confirmDeleteDoc}

Edit Amounts
    [Arguments]    ${amounts}
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${txt_edit_amounts}    10s    AND
    ...    Input Text    ${txt_edit_amounts}    ${amounts}



    
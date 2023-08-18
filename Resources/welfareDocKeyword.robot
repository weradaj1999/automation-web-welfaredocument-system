
*** Settings ***
Library    PuppeteerLibrary 
Variables    ../PageObjects/Locators.py
 
*** Keywords ***

Click Create Welfare Document
    Run Async Keywords    
    ...    Click Button    ${btn_createWelfareDoc}    AND
    ...    Wait Until Element Is Enabled    ${btn_createWelfareDoc}    

Click Start Create Welfare Document
    Run Async Keywords
    ...    Click Button    ${btn_startCreateWelfareDoc}    AND
    ...    Wait Until Page Contains Element   ${btn_startCreateWelfareDoc}      
    
Click Outgoing Document List
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_outDocumentList}    10s    AND
    ...    Click Element    ${btn_outDocumentList}
Click Waiting Document List
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_waitingDoucmentList}    10s    AND
    ...    Click Element    ${btn_waitingDoucmentList}    

Click First Document List
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${list_document_index1}    10s    AND
    ...    Click Element    ${list_document_index1}
    Sleep    2s
    Switch Window    MAIN
    Switch Window    NEW
    Switch Window    NEW

Click Edit Document List
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${icon_edit_btn_index1}    10s    AND
    ...    Click Element    ${icon_edit_btn_index1}
    Sleep    2s
    Switch Window    MAIN
    Switch Window    NEW
    Switch Window    NEW
    
Enter Form WelfareDoc page
    # Run Keyword And Continue On Failure    Click Submit Permission
    Click Create Welfare Document
    Click Start Create Welfare Document
    Sleep    2s
    Switch Window    MAIN
    Switch Window    NEW
    Switch Window    NEW

    # Wait For New Window Open
    # Wait For Navigation  timeout=20s
    

    
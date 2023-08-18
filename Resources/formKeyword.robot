
*** Settings ***
Library    PuppeteerLibrary 
Variables    ../PageObjects/Locators.py
Resource    ../Resources/excel.robot

*** Keywords ***

Add Withdraw Date
    ${withdrawDate}=    Get Withdraw Date
    [Arguments]    ${row}
    Run Async Keywords
    ...    Wait Until Page Contains Element     ${txt_withdrawDate}    20s    AND
    ...    Input Text    ${txt_withdrawDate}   ${withdrawDate[${row}]}[1] 
    
    
Add Welfare Name
    ${welfareCode}=    Get Welfare Name
    [Arguments]    ${row}
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${txt_welfareName}    20s    AND
    ...    Input Text    ${txt_welfareName}    ${welfareCode[${row}]}[1]
     
Add Treatment Start Date
    ${treatmentStartDate}=    Get Treatment Start Date
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_treatmentStartDate}    ${treatmentStartDate[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_treatmentStartDate}    
       
Add Treatment End Date
    ${treatmentEndDate}=    Get Treatment End Date
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_treatmentEndDate}    ${treatmentEndDate[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_treatmentEndDate}    

Add Benefit
    ${benefitCode}=    Get Benefit
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_benefit}    ${benefitCode[${row}]}[1]    20s    AND
    ...    Wait Until Page Contains Element    ${txt_benefit}    

Add Relationship
    ${relationship}=    Get Relationship
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_relationship}    ${relationship[${row}]}[1]    20s    AND
    ...    Wait Until Page Contains Element    ${txt_relationship}

Add Group Disease
    ${groupDisease}=    Get Group Disease
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_groupDisease}    ${groupDisease[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_groupDisease}

Add Disease
    ${diseas}=    Get Disease
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_disease}    ${diseas[${row}]}[1]    20s    AND
    ...    Wait Until Page Contains Element    ${txt_disease}    
    
Add Group Hospital
    ${gropuHospital}=    Get Group Hospital
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_groupHospital}    ${gropuHospital[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_groupHospital}

Add Hospital
    ${hospital}=    Get Hospital
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_hospital}    ${hospital[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_hospital}

Add Pay Type
    ${payType}=    Get Pay Type
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_payType}    ${payType[${row}]}[1]    20s    AND
    ...    Wait Until Page Contains Element    ${txt_payType}

Add Bill Number
    ${billNumber}=    Get Bill Number
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_billNumber}    ${billNumber[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_billNumber} 

Add Bill Number Date
    ${billDate}=    Get Bill Date
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_billNumberDate}    ${billDate[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_billNumberDate}  
Add Description
    ${description}=    Get Description
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_description}    ${description[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_description}

Add Amounts
    ${amounts}=    Get Amounts
    [Arguments]    ${row}
    Run Async Keywords
    ...    Input Text    ${txt_amounts}    ${amounts[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_amounts} 

Add Value Welfare Form
    ${withdrawDate}=    Get Withdraw Date
    ${welfareCode}=    Get Welfare Name
    ${treatmentStartDate}=    Get Treatment Start Date
    ${treatmentEndDate}=    Get Treatment End Date
    ${benefitCode}=    Get Benefit
    ${relationship}=    Get Relationship
    ${groupDisease}=    Get Group Disease
    ${diseas}=    Get Disease
    ${gropuHospital}=    Get Group Hospital
    ${hospital}=    Get Hospital
    ${payType}=    Get Pay Type
    ${billNumber}=    Get Bill Number
    ${billDate}=    Get Bill Date
    ${description}=    Get Description
    ${amounts}=    Get Amounts
    [Arguments]    ${row}
    # Add Withdraw Date
    Run Async Keywords
    ...    Wait Until Element Is Visible     ${txt_withdrawDate}    20s    AND
    ...    Input Text    ${txt_withdrawDate}   ${withdrawDate[${row}]}[1]
       
    # Add Welfare Name
    Run Async Keywords
    ...    Wait Until Element Is Visible    ${txt_welfareName}    20s    AND
    ...    Input Text    ${txt_welfareName}    ${welfareCode[${row}]}[1]

    # Add Treatment Start Date
    Run Async Keywords
    ...    Input Text    ${txt_treatmentStartDate}    ${treatmentStartDate[${row}]}[1]    AND
    ...    Wait Until Element Is Visible    ${txt_treatmentStartDate} 

    # Add Treatment End Date
    Run Async Keywords
    ...    Input Text    ${txt_treatmentEndDate}    ${treatmentEndDate[${row}]}[1]    AND
    ...    Wait Until Element Is Visible    ${txt_treatmentEndDate}
    
    # Add Benefit
    Run Async Keywords
    ...    Input Text    ${txt_benefit}    ${benefitCode[${row}]}[1]    20s    AND
    ...    Wait Until Element Is Visible    ${txt_benefit}  
    ...      
    # Add Relationship
    Run Async Keywords
    ...    Input Text    ${txt_relationship}    ${relationship[${row}]}[1]    AND
    ...    Wait Until Element Is Visible    ${txt_relationship}    20s
    
    
    # # Add Group Disease
    # Run Async Keywords
    # ...    Input Text    ${txt_groupDisease}    ${groupDisease[${row}]}[1]    AND
    # ...    Wait Until Page Contains Element    ${txt_groupDisease}
    
    # Add Disease
    Run Async Keywords
    ...    Wait Until Element Is Visible    ${txt_disease}    20s    AND
    ...    Input Text    ${txt_disease}    ${diseas[${row}]}[1]


    # # Add Group Hospital
    # Run Async Keywords
    # ...    Input Text    ${txt_groupHospital}    ${gropuHospital[${row}]}[1]    AND
    # ...    Wait Until Page Contains Element    ${txt_groupHospital}

    # Add Hospital
    Run Async Keywords
    ...    Wait Until Element Is Visible    ${txt_hospital}    20s    AND
    ...    Input Text    ${txt_hospital}    ${hospital[${row}]}[1]

    # Add Pay Type
    Run Async Keywords
    ...    Input Text    ${txt_payType}    ${payType[${row}]}[1]    20s    AND
    ...    Wait Until Page Contains Element    ${txt_payType}

    # Add Bill Number
    Run Async Keywords
    ...    Input Text    ${txt_billNumber}    ${billNumber[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_billNumber} 

    # Add Bill Number Date
    Run Async Keywords
    ...    Input Text    ${txt_billNumberDate}    ${billDate[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_billNumberDate}  

    # Add Description
    Run Async Keywords
    ...    Input Text    ${txt_description}    ${description[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_description}

    # Add Amounts
    Run Async Keywords
    ...    Input Text    ${txt_amounts}    ${amounts[${row}]}[1]    AND
    ...    Wait Until Page Contains Element    ${txt_amounts} 

    
Click Save Document
    Scroll Element Into View    ${btn_save}
    Run Async Keywords
    ...    Wait Until Page Contains Element    ${btn_save}    10s    AND
    ...    Click Element    ${btn_save}
    Wait Until Page Contains    บันทึกเอกสารเรียบร้อยแล้ว
    
Click Send
    Run Async Keywords
    ...    Wait Until Element Is Visible    ${btn_send}    20s    AND
    ...    Click Button    ${btn_send}

Click Confirm Send
    Run Async Keywords
    ...    Wait Until Element Is Visible    ${btn_confirmSend}    20s    AND
    ...    Click Button    ${btn_confirmSend}

Verify Messesge
    ${messageAlert}=    Get Message Alert
    [Arguments]    ${row}
ow    Wait Until Page Contains    ${messageAlert[${${row}}]}[1]    10s

Expected Request Amounts
    ${request_amounts}=    Get Request Amount
    [Arguments]    ${row}
    Element Text Should Be    ${message_request_amounts}    expected=-ยอดเงินตามใบเสร็จ = ${request_amounts[${row}]}[1] บาท    
Expected Company Amounts
    ${company_amounts}=    Get Company Amount
    [Arguments]    ${row}
    Element Text Should Be    ${message_company_amounts}    expected=-ยอดเงินที่บริษัทจ่ายให้ = ${company_amounts[${row}]}[1] บาท

Expected Employee Amounts
    ${employee_amounts}=    Get Employee Amount
    [Arguments]    ${row}
    Element Text Should Be    ${message_employee_amounts}    expected=-ยอดเงินส่วนที่ท่านต้องจ่าย = ${employee_amounts[${row}]}[1] บาท
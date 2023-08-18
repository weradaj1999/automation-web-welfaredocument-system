*** Settings ***
Library    DatabaseLibrary
Library    ExcelRobot
Resource    ../Resources/excel.robot


*** Keywords ***
Delete Welfare Document 
    ${billNumber}=    Get Bill Number
    Sleep    2s
    Connect To Database Using Custom Params    pymssql    database='your-name', user='your-name', password='your-name', host='your-name', port=your-name
    
    # GET DC_NO 
    [Arguments]    ${row}    
    ${result_dc_no}=    Query    SELECT * FROM WO_DOCUMENTS WHERE RQ_RUNNO ='0000000035' AND DC_FLDS8 LIKE '${billNumber[${row}]}[1]' ORDER BY SMPT DESC
    ${DC_NO}    Set Variable    ${result_dc_no}[0][16]
    # Log To Console    DC_NO:${DC_NO}

    # GET DC_RUNNO
    ${result_dc_runno}=     Query   SELECT * FROM WO_DOCUMENTS WHERE RQ_RUNNO ='0000000035' AND DC_NO ='${DC_NO}'
    ${DC_RUNNO}    Set Variable    ${result_dc_runno}[0][0]
    # Log To Console    DC_RUNNO:${DC_RUNNO}

    # GET WPD_CODE
    ${WPD_CODE}    Set Variable    ${result_dc_no}[0][16]
    # Log To Console    WPD_CODE:${WPD_CODE}

    # GET WPD_RUNNO
    ${result_wpd_runno}=    Query   SELECT * FROM WWF_CWELFOUT WHERE WPD_CODE = '${WPD_CODE}'
    ${WPD_RUNNO}    Set Variable    ${result_wpd_runno}[0][0]
    # Log To Console    WPD_RUNNO:${WPD_RUNNO}

    # DELETE SCRIPT
    Execute Sql String    DELETE FROM WO_DOCUMENTS WHERE RQ_RUNNO ='0000000035' AND DC_NO ='${DC_NO}' 
    Execute Sql String    DELETE FROM WO_DOCUMENT WHERE DC_RUNNO = ${DC_RUNNO}
    Execute Sql String    DELETE FROM WO_DOCSTATUS WHERE DC_RUNNO = ${DC_RUNNO}
    Execute Sql String    DELETE FROM WWF_CWELFOUT WHERE WPD_CODE='${WPD_CODE}' 
    Execute Sql String    DELETE FROM WWF_CWELFPAIDS WHERE WPD_RUNNO = '${WPD_RUNNO}'
    # Log To Console    Delete Welfare Document Success
    Disconnect From Database



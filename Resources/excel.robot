*** Settings ***
Library    ExcelRobot
Library    PuppeteerLibrary
Library    ExcelLibrary
Library    Collections
# Test Setup    Open Excel    ${file_path}
# Test Teardown    Close All Excel Documents

*** Variables ***

# import your test data file excel
${file_path}=    your-path/test-data.xls 

*** Keywords ***
 Get Username 
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=1       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Password
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=2       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Withdraw Date
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=5       
   [Return]    ${excel_data}
   Close All Excel Documents

Get Welfare Name
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=6       
   [Return]    ${excel_data}
   Close All Excel Documents

Get Treatment Start Date
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=7       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Treatment End Date
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=8       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Benefit
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=9       
   [Return]    ${excel_data}
   Close All Excel Documents 
Get Relationship
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=10       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Group Disease
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=11       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Disease
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=12       
   [Return]    ${excel_data}
   Close All Excel Documents

Get Group Hospital
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=13       
   [Return]    ${excel_data}
   Close All Excel Documents

Get Hospital
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=14       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Pay Type
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=15       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Bill Number
    Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=16     
   [Return]    ${excel_data}
   Close All Excel Documents
Get Bill Date
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=17       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Description
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=18      
   [Return]    ${excel_data}
   Close All Excel Documents
Get Amounts
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=19       
   [Return]    ${excel_data}
   Close All Excel Documents
Get Message Alert
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=20       
   [Return]    ${excel_data}
   Close All Excel Documents

Get Request Amount
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=21       
   [Return]    ${excel_data}
   Close All Excel Documents

Get Company Amount
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=22       
   [Return]    ${excel_data}
   Close All Excel Documents

Get Employee Amount
   Open Excel    ${file_path}
   ${excel_data}=    Get Column Values    
   ...    sheet_name=manageDocument    
   ...    column=23       
   [Return]    ${excel_data}
   Close All Excel Documents
   
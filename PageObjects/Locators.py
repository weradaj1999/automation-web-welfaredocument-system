# Login Page 
txt_loginUsername="id:username"
txt_loginPassword="xpath://input[@name='password']"
btn_signIn="xpath://button[@class='btn btn-lg btn-block signin-button ng-binding']"

# Main Page
btn_dairyMenu="xpath://h4[@class='h4-menu ng-binding' and text()='รายการประจำวัน']"
btn_welfareMenu="xpath://h4[@class='h4-menu ng-binding' and text()='สวัสดิการ']"
btn_welfareDocMenu="xpath://h4[@class='h4-menu ng-binding' and text()='เอกสารใบขอเบิกสวัสดิการ']"

# Create Welfare Document Page
btn_createWelfareDoc="xpath://button[@class='btn btn-add ng-scope btn-80']"
icon_search_btn_workflow="css:#lkRO_LIST2 > div > div.input-group > span > button"
icon_search_btn_resource="css:#lkRES_LIST2 > div > div.input-group > span > button"
icon_edit_btn_index1="css:#home-panel > div > div > div > div > div.col-md-9 > div > div.panel-body > table > tbody > tr > td > div:nth-child(3) > div.col-sm-3.hidden-xs > div:nth-child(2) > div:nth-child(2) > a > i"
btn_startCreateWelfareDoc="xpath:(//button[@class='btn btn-success btn-block ng-binding'])[2]"
btn_outDocumentList="css:#home-panel > div > div > div > div > div.col-md-3 > div > div:nth-child(3) > div > div > a:nth-child(4)"
btn_waitingDoucmentList="css:#home-panel > div > div > div > div > div.col-md-3 > div > div:nth-child(3) > div > div > a:nth-child(2)"
list_document_index1="xpath=(//td[@class='font-size-responsive'])[1]"

# Detail Welfare Document Page
btn_cancleDoc="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div.panel-body > div.btn-flex.mb-2.ng-star-inserted > button.btn.btn-h-cancel.btn-80.ng-star-inserted"
btn_confirmCancleDoc="css:body > div.swal2-container.swal2-center.swal2-backdrop-show > div > div.swal2-actions > button.swal2-confirm.btn.btn-action-confirm.btn-80"
btn_backwardDoc="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div.panel-body > div.btn-flex.mb-2.ng-star-inserted > button.btn.btn-h-rollback.btn-80.ng-star-inserted"
btn_confirmBackwardDoc="css:body > div.swal2-container.swal2-center.swal2-backdrop-show > div > div.swal2-actions > button.swal2-confirm.btn.btn-action-confirm.btn-80"
btn_deleteDoc="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div.panel-body > div:nth-child(3) > button.btn.btn-h-delete.btn-80.ng-star-inserted"
btn_confirmDeleteDoc="css:body > div.swal2-container.swal2-center.swal2-backdrop-show > div > div.swal2-actions > button.swal2-confirm.btn.btn-action-confirm.btn-80"
txt_edit_amounts="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > fieldset.ng-star-inserted > div:nth-child(1) > div.col-xs-4.col-sm-4.text-break.text-left.text-sm-left.text-value.pl-0 > div > div.col-md-7 > input"

# Form Welfare Document Page
txt_withdrawDate="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div:nth-child(1) > div.col-xs-4.col-sm-4.text-break.text-left.text-sm-left.text-value.pl-0 > cp-date > div > div > div > input"
txt_welfareName="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div:nth-child(3) > div.col-xs-4.col-sm-4.text-break.text-left.text-sm-left.text-value.pl-0 > lk-search > div > div:nth-child(1) > input"
txt_treatmentStartDate="xpath:(//input[@name='dp'])[2]"
txt_treatmentEndDate="xpath:(//input[@name='dp'])[3]"
txt_benefit="xpath:(//input[@class='form-control pr-4 ng-untouched ng-pristine ng-valid ng-star-inserted'])[1]"
txt_relationship="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div:nth-child(5) > div.col-xs-4.col-sm-4.text-break.text-left.text-sm-left.text-value.pl-0 > lk-search > div > div:nth-child(1) > input"
txt_groupDisease="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div:nth-child(6) > div:nth-child(2) > lk-search > div > div:nth-child(1) > input"
txt_disease="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div:nth-child(6) > div:nth-child(4) > lk-search > div > div:nth-child(1) > input"
txt_groupHospital="xpath:(//input[@class='form-control pr-4 ng-untouched ng-pristine ng-valid ng-star-inserted'])[5]"
txt_hospital="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div:nth-child(7) > div:nth-child(4) > lk-search > div > div:nth-child(1) > input"
txt_payType="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div:nth-child(8) > div.col-xs-4.col-sm-4.text-break.text-left.text-sm-left.text-value.pl-0 > lk-search > div > div:nth-child(1) > input"
txt_billNumber="xpath:(//input[@class='form-control ng-untouched ng-pristine ng-valid'])[2]"
txt_BillNumberDate="xpath:(//input[@container='body'])[4]"
txt_description="id=textAreaExample1"
                
txt_amounts="xpath://input[@class='form-control text-left ng-untouched ng-pristine ng-valid']"
btn_amountsProcessing="xpath:(//button[@class='btn btn-h-process btn-menu'])[1]"
box_amountsReqest="xpath:(//input[@class='form-control ng-untouched ng-pristine'])[1]"
box_amountsInsurancePay="xpath:(//input[@class='form-control ng-untouched ng-pristine'])[2]"
box_amountsCompanyPay="xpath:(//input[@class='form-control ng-untouched ng-pristine'])[3]"
box_amountsEmployeePay="xpath:(//input[@class='form-control ng-untouched ng-pristine'])[4]"

btn_addOtherDocument="xpath://i[@class='fa icon-add-file']"
btn_addDetail="css:body > app-root > div > div.content > div > div > div > div > div > div.col-sm-9 > app-createdoc > div > div > div > div > div.btn-flex.mt-2.mb-2 > a > img"

btn_save="xpath://button[@class='btn btn-h-save btn-80']"

btn_send="xpath://button[@class='btn btn-h-send btn-80']"
btn_confirmSend="xpath=//button[@class='swal2-confirm btn btn-action-confirm btn-80']"
box_sendMessage="xpath://div[@id='swal2-content']"

message_request_amounts="css:#swal2-content > div > div > div:nth-child(2)"
message_company_amounts="css:#swal2-content > div > div > div:nth-child(3)"
message_employee_amounts="css:#swal2-content > div > div > div:nth-child(4)"
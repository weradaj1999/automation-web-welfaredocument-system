
*** Settings ***
Library    PuppeteerLibrary
Library    DatabaseLibrary
Library    ExcelLibrary
Resource    ../Resources/loginKeyword.robot
Resource    ../Resources/mainKeyword.robot
Resource    ../Resources/formKeyword.robot
Resource    ../Resources/welfareDocKeyword.robot
Resource    ../Resources/database.robot
Resource    ../Resources/detailDocKeyword.robot
Test Setup    Open Login Page
Test Teardown    Close All Browser

*** Test Cases ***
welDoc02 - Submit Welfare Document Valid
    # Process
    Enter Login    row=2
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=2
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=2
    Sleep    2s
    # Backward Data
    Delete Welfare Document    row=2
    Log    Delete Document Success
welDoc03 - Cancle Welfare Document Valid
    Enter Login    row=3
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=3
    Click Send
    Click Confirm Send
    Close Window
    # Enter Outgoing Document List
    Click Outgoing Document List
    Click First Document List
    Click Cancle Document
    Click Confirm Cancle Document
    # Verify
    Verify Messesge    row=3
    # Backward Welfare Document Data
    Delete Welfare Document    row=3
    Log    Delete Document Success

welDoc04 - Delete Welfare Document Valid
    Enter Login    row=4
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=4
    Click Send
    Click Confirm Send
    Close Window
    # Enter Outgoing Document List
    Click Outgoing Document List
    Click First Document List
    Click Backward Document
    Click Confirm Backward Document
    Close Window
    # Enter Waiting Document List
    Click Waiting Document List
    Click First Document List
    Click Delete Document
    Click Confirm Backward Document
    # Verfify
    Verify Messesge    row=4
welDoc05 - Edit Welfare Document Valid
    Enter Login    row=5
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=5
    Click Send
    Click Confirm Send
    Close Window
    # Enter Outgoing Document List
    Click Outgoing Document List
    Click First Document List
    Click Backward Document
    Click Confirm Backward Document
    Close Window
    # Enter Waiting Document List
    Click Waiting Document List
    Click Edit Document List
    Edit Amounts    amounts=2000
    Click Save Document
    Click Confirm Send
    # Verfify
    Verify Messesge    row=5
    # Backward Welfare Document Data
    Delete Welfare Document    row=5
    Log    Delete Document Success
welDoc06 - Submit Welfare Document Over Counts per benefit
    Enter Login    row=6
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=6
    Click Send
    Click Confirm Send
    # Verfify
    Verify Messesge    row=6
welDoc07 - Submit Welfare Document Over Counts per Overlife
    Enter Login    row=7
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=7
    Click Send
    Click Confirm Send
    # Verfify
    Verify Messesge    row=7
welDoc08 - Submit Welfare Document Over Counts per Welfare
    Enter Login    row=8
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=8
    Click Send
    Click Confirm Send
    # Verfify
    Verify Messesge    row=8
welDoc09 - Submit Welfare Document Over Counts per Disease
    Enter Login    row=9
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=9
    Click Send
    Click Confirm Send
    # Verfify
    Verify Messesge    row=9
welDoc10 - Submit Welfare Document Over Day per Benefit
    Enter Login    row=10
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=10
    Click Send
    Click Confirm Send
    # Verfify
    Verify Messesge    row=10
welDoc11 - Submit Welfare Document Over Day per Overlife
    Enter Login    row=11
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=11
    Click Send
    Click Confirm Send
    # Verfify
    Verify Messesge    row=11
welDoc12 - Verify Max Amount Per Times (Overdraw is not allowed)
    Enter Login    row=12
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=12
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=12
    Expected Company Amounts    row=12
    Expected Employee Amounts    row=12
welDoc13 - Verify Max Amounts Per Time (Overdraw,Company 50% Employee 50%)
    Enter Login    row=13
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=13
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=13
    Expected Company Amounts    row=13
    Expected Employee Amounts    row=13
welDoc14 - Verify Max Amounts Per Time (Overdraw,Employee 100%)
    Enter Login    row=14
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=14
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=14
    Expected Company Amounts    row=14
    Expected Employee Amounts    row=14
welDoc15 - Verify Max Amounts Per Day (Overdraw is not allowed)
    Enter Login    row=15
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=15
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=15
    Expected Company Amounts    row=15
    Expected Employee Amounts    row=15
welDoc16 - Verify Max Amounts Per Day (Overdraw,Company 50% Employee 50%)
    Enter Login    row=16
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=16
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=16
    Expected Company Amounts    row=16
    Expected Employee Amounts    row=16
welDoc17 - Verify Max Amounts Per Day (Overdraw,Employee 100%)
    Enter Login    row=17
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=17
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=17
    Expected Company Amounts    row=17
    Expected Employee Amounts    row=17
welDoc18 - Traninee withdraw benefit of Employee
    Enter Login    row=18
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    # Add Value Welfare Form    row=18
    Add Withdraw Date    row=18
    Add Welfare Name    row=18
    Add Treatment Start Date    row=18
    Add Treatment End Date    row=18
    Add Benefit    row=18
    Click Send
    # Verify 
    Verify Messesge    row=18
welDoc19 - Trainee withdraw benefit of Trainee
    Enter Login    row=19
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=19
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=19
    Expected Company Amounts    row=19
    Expected Employee Amounts    row=19
welDoc20 - Employee withdraw benefit of Employee
    Enter Login    row=20
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=20
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=20
    Expected Company Amounts    row=20
    Expected Employee Amounts    row=20
welDoc21 - Employee withdraw benefit of Trainee
    Enter Login    row=21
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=21
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=21
    Expected Company Amounts    row=21
    Expected Employee Amounts    row=21
welDoc22 - Withdraw Max Amount per Benefit
    Enter Login    row=22
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=22
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=22
    Expected Company Amounts    row=22
    Expected Employee Amounts    row=22
welDoc23 - Withdraw Max Amount per Welfare
    Enter Login    row=23
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=23
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=23
    Expected Company Amounts    row=23
    Expected Employee Amounts    row=23
welDoc24 - Withdraw Max Amount per Overlife
    Enter Login    row=24
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=24
    Click Send
    Sleep    5s
    # Verify Amounts
    Expected Request Amounts    row=24
    Expected Company Amounts    row=24
    Expected Employee Amounts    row=24
welDoc25 - First Withdraw Not Equal Amounts per Overlife
    Enter Login    row=25
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=25
    Click Send
    # Verfify
    Verify Messesge    row=25
welDoce26 - First Withdraw Equal Amounts per Overlife
    Enter Login    row=26
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=26
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=26
    # Backward Data
    Delete Welfare Document    row=26
    Log    Delete Document Success
welDoc27 - Second Withdraw Not Equal Amounts per Overlife
    Enter Login    row=27
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=27
    Click Send
    # Verfify
    Verify Messesge    row=27
welDoce28 - Second Withdraw Equal Amounts per Overlife
    Enter Login    row=28
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=28
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=28
    # Backward Data
    Delete Welfare Document    row=28
    Log    Delete Document Success
welDoc29 - WIthdraw Welfare Use Processing Amount by Matrix (Company Pay100%)
    Enter Login    row=29
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=29
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=29
    Expected Company Amounts    row=29
    Expected Employee Amounts    row=29
welDoc30 - WIthdraw Welfare Use Processing Amount by Matrix (Company Pay50%)
    Enter Login    row=30
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=30
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=30
    Expected Company Amounts    row=30
    Expected Employee Amounts    row=30
welDoc31 - Male Withdraw Male Welfare
    Enter Login    row=31
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=31
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=31
    # Backward Data
    Delete Welfare Document    row=31
    Log    Delete Document Success
welDoc32 - Male Withdraw Female Welfare
    Enter Login    row=32
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=32
    Add Welfare Name    row=32
    Click Send
    # Verify
    Verify Messesge    row=32
welDoc33 - Female Withdraw Male Welfare
    Enter Login    row=33
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=33
    Add Welfare Name    row=33
    Click Send
    Sleep    5s
    # Verify
    Verify Messesge    row=33
welDoc34 - Female Withdraw Female Welfare
    Enter Login    row=34
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=34
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=34
    # Backward Data
    Delete Welfare Document    row=34
    Log    Delete Document Success
welDoc35 - Withdraw by Not Due Date of Welfare
    Enter Login    row=35
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=35
    Add Welfare Name    row=35
    Add Treatment Start Date    row=35
    Add Treatment End Date    row=35
    Add Benefit    row=35
    Click Send
    # Verify 
    Verify Messesge    row=35
welDoc36 - Withdraw by Due Date of Welfare
    Enter Login    row=36
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=36
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=36
    # Backward Data
    Delete Welfare Document    row=36
    Log    Delete Document Success
welDoc37 - Welfare For Employee in List, Withdraw by Employee in List
    Enter Login    row=37
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=37
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=37
    # Backward Data
    Delete Welfare Document    row=37
    Log    Delete Document Success
welDoc38 - Welfare For Employee in List, Withdraw by Employee Not in List
    Enter Login    row=38
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=38
    Add Welfare Name    row=38
    Click Send
    # Verify 
    Verify Messesge    row=38
welDoc39 - Welfare For Employee Not in List, Withdraw by Employee in List
    Enter Login    row=39
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=39
    Add Welfare Name    row=39
    Click Send
    # Verify 
    Verify Messesge    row=39
welDoc40 - Welfare For Employee Not in List, Withdraw by Employee Not in List
    Enter Login    row=40
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=40
    Click Send
    Click Confirm Send
    # Verify
    Verify Messesge    row=40
    # Backward Data
    Delete Welfare Document    row=40
    Log    Delete Document Success
welDoc41 - Withdraw Welfare, Verify by Amounts Group Welfare
    Enter Login    row=41
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=41
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=41
    Expected Company Amounts    row=41
    Expected Employee Amounts    row=41
welDoc42 - Withdraw Welfare Not For Yourself or Family
    Enter Login    row=42
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=42
    Add Welfare Name    row=42
    Click Send
    # Verify 
    Verify Messesge    row=42
welDoc43 - Withdraw Welfare For Famliy, But Age Invalid Condition
    Enter Login    row=43
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=43
    Add Welfare Name    row=43
    Click Send
    # Verify 
    Verify Messesge    row=43
welDoc44 - Withdraw Welfare For Family, Age Valid Condition
    Enter Login    row=44
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Value Welfare Form    row=44
    Click Send
    # Verify Amounts
    Expected Request Amounts    row=44
    Expected Company Amounts    row=44
    Expected Employee Amounts    row=44
welDoc45 - Withdraw Welfare For Family, But Age Don't Have Data
    Enter Login    row=45
    Enter WelfareDoc Page
    Enter Form WelfareDoc page
    Add Withdraw Date    row=45
    Add Welfare Name    row=45
    Add Benefit    row=45
    Add Relationship    row=45
    Click Send
    # Verify 
    Verify Messesge    row=45
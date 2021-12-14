*** Settings ***
Documentation    Suite description


*** Keywords ***
Switch_Demo
    wait until page does not contain element    ${page_loader}  15
    click element       ${account_info}
    click element   ${demo_account_tab}
    click element   ${demo_acount}

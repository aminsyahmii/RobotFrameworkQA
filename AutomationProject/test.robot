*** Settings ***

Library     SeleniumLibrary
Resource   common.robot
Resource    demo-switcher.robot
Resource   volatility.robot
Resource    Lower_contract.robot
Resource    Barrier.robot


*** Variable ***
${login_btn}    dt_login_button
${email_field}  name=email
${pw_field}     //*[@type="password"]
${login_auth-button}    //*[text()="Log in"]
${account_info}     //*[@id="dt_core_account-info_acc-info"]
${demo_account_tab}     //*[@id="dt_core_account-switcher_demo-tab"]
${demo_acount}      //*[@id="dt_VRTC4795373"]/span
${page_loader}      //*[@class="chart-container__loader"]
${menu_btn}         //*[@class="cq-menu-btn"]
${10sVolatility}    //*[contains(@class,"item--1HZ10V")]
${sidebar}      //*[@class="btn-purchase btn-purchase--1"]
${navbar_switch}      //*[@class="acc-info__container"]
${navbar}           //*[@class="header__menu-left"]
${synthetic_indices}    //*[text()="Synthetic Indices"]
${Rise}               //*[@class="btn-purchase btn-purchase--1"]
${Forex}            //*[text()="Forex"]
${AUD/USD}        //*[text()="AUD/USD"]
${choose_contract}      //*[@class="trade-container__fieldset trade-types"]
${high/low}         //*[@id="dt_contract_high_low_item"]
${contract_option}       //*[@class="dc-vertical-tab__header dc-vertical-tab__header--active"]
${payout_input}      //*[@id="dt_amount_input"]
${duration_input}    //*[@class="dc-input__field"]
${payout_toggle}        //*[@id="dc_payout_toggle_item"]
${barrier_input}        //*[@id="dt_barrier_1_input"]

*** Keyword ***


*** Test Cases ***

Open Deriv
    Login  ${USER}  ${PASS}
#    Switch_Demo
#    Buy_contract
#    lower_contract
    Barrier_test

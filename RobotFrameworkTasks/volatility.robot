*** Settings ***
Documentation    Suite description


*** Keywords ***
Buy_contract
    wait until page contains element    ${sidebar}   60
    click element    ${menu_btn}
    click element    ${synthetic_indices}
    wait until page contains element    ${10sVolatility}   15
    click element    ${10sVolatility}
    wait until page contains element    ${Rise}
    click element    ${Rise}
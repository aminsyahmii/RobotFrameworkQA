*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary



*** Keywords ***
lower_contract
    click element        ${menu_btn}
    click element        ${Forex}
    wait until page contains element         ${AUD/USD}
    click element        ${AUD/USD}
    wait until page contains element        ${choose_contract}
    click element        ${choose_contract}
    wait until page contains element         ${contract_option}
    click element   ${contract_option}
    wait until page contains element       ${high/low}
    click element   ${high/low}
    clear element text      ${duration_input}
    input text   ${duration_input}          2
    click element           ${payout_toggle}
    ${current_value}=   get element attribute   ${payout_input}     value
    ${actual_value}=    get length      ${current_value}
    repeat keyword   ${actual_value}    press keys      ${payout_input}      BACKSPACE
    input text      ${payout_input}     15.50
*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     String

*** Keywords ***
Barrier_test
    wait until page contains element    ${sidebar}   60
    wait until page contains element    ${menu_btn}   60
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element        ${menu_btn}
    wait until page contains element    ${Forex}
    click element        ${Forex}
    wait until page contains element         ${AUD/USD}
    click element        ${AUD/USD}
    wait until page contains element        ${choose_contract}
    click element        ${choose_contract}
    wait until page contains element         ${contract_option}
    click element   ${contract_option}
    wait until page contains element       ${high/low}
    click element   ${high/low}
    clear input field       ${duration_input}
    input text   ${duration_input}          2
    Clear input field       ${barrier_input}
    input text      ${barrier_input}        +1
    wait until page contains        Contracts more than 24 hours in duration would need an absolute barrier.        15
    click element           ${payout_toggle}
    clear input field       ${payout_input}
    input text              ${payout_input}         10

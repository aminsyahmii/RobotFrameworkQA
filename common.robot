*** Settings ***
Documentation    Suite description

*** Keywords ***
Login
    [arguments]  ${email}  ${pw}
    Open Browser    https://app.deriv.com   chrome
    set window size   1280   1028
    wait until page does not contain element   dt_core_header_acc-info-preloader
#    wait until page contains element  ${login_btn}  60
    click element   ${login_btn}
    wait until page contains element  ${email_field}  15
    input text  ${email_field}  ${email}
    input text   ${pw_field}  ${pw}
    click element   ${login_auth-button}

Clear input field
    [arguments]     ${path}
    ${current_value}=       get element attribute        ${path}     value
    ${actual_value}=        get length          ${current_value}
    repeat keyword   ${actual_value}    press keys      ${path}      BACKSPACE
#    Close Browser
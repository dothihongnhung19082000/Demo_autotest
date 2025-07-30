*** Settings ***
Resource    ../../config/imports.resource
Resource    home_variables.resource


*** Keywords ***
Home - Access To The Login Form
    Common - Wait And Click Element    ${btn_access_login_form}

Home - Verify Login Success
    Element should be visible    ${txt_login_success}

Home - Choose Product
    Common - Wait And Click Element    ${btn_samsung_galaxy_s6}

Home - Access To cart
    Common - Wait And Click Element    ${btn_access_cart}

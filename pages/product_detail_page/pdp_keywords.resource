*** Settings ***
Resource    ../../config/imports.resource
Resource    pdp_variables.resource


*** Keywords ***
PDP - Verify Product Detail Information
    Wait until element is visible    ${title_samsung_galaxy_s6}
    Wait until element is visible    ${price_samsung_galaxy_s6}
    Wait until element is visible    ${detail_samsung_galaxy_s6}

PDP - Add Product To Cart
    Common - Wait And Click Element    ${btn_add_to_cart}

PDP - Verify Product Is Added Success
    Alert should be present    ${txt_product_added_success}    ACCEPT

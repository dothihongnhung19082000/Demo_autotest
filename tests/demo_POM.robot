*** Settings ***
Resource            ../config/imports.resource

Test Setup          Common - Open Demoblaze Website
Test Teardown       Common - Close Browser Session


*** Variables ***
${username}     tester001
${password}     Admin@123


*** Test Cases ***
TC1 - Login Successfully With Valid Credential
    Home - Access To The Login Form
    Login - Fill The Login Form    ${username}    ${password}
    Login - Click Submit Login Button
    Home - Verify Login Success

TC2 - Login With Invalid Credential
    Home - Access To The Login Form
    Login - Fill The Login Form    ${username}    Admin
    Login - Click Submit Login Button
    Login - Verify Wrong Password Alert

TC3 - Verify Infor In Product Detail
    Home - Choose Product
    PDP - Verify Product Detail Information

TC4 - User Can Add Product To Cart
    Home - Choose Product
    PDP - Verify Product Detail Information
    PDP - Add Product To Cart
    PDP - Verify Product Is Added Success


TC5 - Test
    Log dir     ahhhs

TC6 - Test
    PDP - Verify Product Is Added Success


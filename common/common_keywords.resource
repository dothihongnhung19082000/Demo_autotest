*** Settings ***
Resource    ../config/imports.resource
Resource    common_variables.resource


*** Keywords ***
Common - Open Demoblaze Website
    Open browser    ${url}    ${browser_name}
    Maximize browser window
    Start video recording

Common - Close Browser Session
    Common - Stop Screen Record
    Close browser

Common - Wait And Click Element
    [Arguments]    ${element}    ${timeout}=${timeout_default}
    Wait until element is visible    ${element}    ${timeout}
    Click button    ${element}

Common - Wait And Input Text
    [Arguments]    ${element}    ${text}    ${timeout}=${timeout_default}
    Wait until element is visible    ${element}    ${timeout}
    Clear element text    ${element}
    Input text    ${element}    ${text}

Common - Stop Screen Record
    ${file_name}=    Stop video recording
    Run keyword if all tests passed    Remove file    ${file_name}

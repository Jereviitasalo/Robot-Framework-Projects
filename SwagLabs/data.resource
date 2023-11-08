*** Settings ***
Library    Browser

*** Variables ***
${url}            https://www.saucedemo.com/
${username}       standard_user
${password}       secret_sauce
${username_id}    id=user-name
${password_id}    id=password
${login_id}       id=login-button

*** Keywords ***
Open Website
    New Browser    chromium    headless=False
    New Context
    New Page       ${url}

Login To Swag Labs
    [Tags]       Login    Positive
    Fill Text    ${username_id}    ${username}
    Fill Text    ${password_id}    ${password}
    Sleep    1
    Click        ${login_id}
    Validate Login
    Sleep    1

Validate Login
    ${Products_text}    Get Text    css=#header_container .title
    Should Be Equal    ${Products_text}    Products
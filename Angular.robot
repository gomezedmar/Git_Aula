*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            https://twitter.com/signup
${DELAY}          0
${USER}           John Doe
${PASSWORD}       B3ed41*&
${EMAIL}          jd@jd7.com
${BROWSER}        Firefox

*** Test Cases ***
Navigation
    [Documentation]    This test case validates if Robot is able to navigate through the 'Heros' and 'About' pages from the Dashboard
    [Template]
    [Timeout]
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Title Should Be    Inscreva-se no Twitter
    Input Text    full-name    ${USER}
    Input Text    email    ${EMAIL}
    Input Password    password    ${PASSWORD}
    Click Button    submit_button

*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${URL}            https://tasteofpatna.com/

*** Test Cases ***
Automation
    [Documentation]    Taste of patna web automation
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Wait Until Page Contains    Taste of Patna    10s
    Click Element    xpath=//a[text()='About']
    Wait Until Page Contains    About Us    10s
    Scroll Element Into View    xpath=//*[text()='Rohit Singh']
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

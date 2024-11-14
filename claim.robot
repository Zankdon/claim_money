*** Settings ***
Documentation     A test suite for claiming money.
...
...               Keywords are imported from the resource file
Library         SeleniumLibrary



*** Variables ***

${CODE}         code
${EMAIL}     name@email.com

*** Test Cases ***
    

claim
    Open Browser    https://whathappensat1000000000.com/?skip-animation=t     options=add_argument("disable-search-engine-choice-screen")
    Wait Until Element Is Visible    id=passcode-input    30s
    Input Text    id=passcode-input    ${CODE}
    Press Keys    id=passcode-input   ENTER
    Capture Page Screenshot
    Wait Until Element Is Visible    id=email-input     30s
    Input Text    id=email-input    ${EMAIL}
    Press Keys    id=email-input     ENTER
    Get Text    id=passcode-input
    Capture Page Screenshot
    Close Browser
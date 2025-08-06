*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/variables.robot

*** Test Cases ***
Open Chrome And Go To Example
    Open Browser    ${EXAMPLE_URL}  chrome
    Title Should Be     Example Domain
    Capture Page Screenshot
    Close Browser

*** Settings ***
Library    BuiltIn
Library    FirewallKeywords.py

*** Variables ***
${RULE_NAME}    TestAllowPort5000
${PORT}         5000

*** Test Cases ***
Add And Verify Firewall Rule
    Add Firewall Rule    ${RULE_NAME}    ${PORT}
    ${exists}=    Rule Exists    ${RULE_NAME}
    Should Be True    ${exists}

    Delete Firewall Rule    ${RULE_NAME}
    ${still_exists}=    Rule Exists    ${RULE_NAME}
    Should Be Equal    ${still_exists}    ${False}

*** Settings ***
Library    BuiltIn

*** Test Cases ***
Boolean Comparison Test
    ${val}=    Set Variable    False
    Log    Type: ${val.__class__} | Value: ${val}    console=True
    ${val}=    Convert To Boolean    ${val}
    Log    After Conversion: ${val.__class__} | Value: ${val}    console=True
    Should Be Equal    ${val}    ${False}

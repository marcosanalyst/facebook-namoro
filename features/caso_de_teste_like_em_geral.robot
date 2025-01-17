*** Settings ***
Documentation        Caso de teste like em geral
Resource             ../routes.robot

Test Setup            Abrir aplicativo facebook
Test Teardown         Fechar aplicativo facebook

*** Test Cases ***
caso de teste like em geral
    # Dado que abro o aplicativo
    # Quando clico no icone coracao
    Sleep   3
    ${x}=  Set Variable    420
    ${y}=  Set Variable    185

    Click A Point   ${x}   ${y}

    # fechar bunner
    Run Keyword And Ignore Error    Click Element    locator
    
    Sleep    3
    # Entao dou like
    Wait Until Element Is Visible    ${btn_curtir}
    Click Element    ${btn_curtir}

    Sleep    5


*** Settings ***
Documentation        Caso de teste like em geral
Resource             ../routes.robot

Test Setup            Abrir aplicativo facebook
Test Teardown         Fechar aplicativo facebook

*** Test Cases ***

caso de teste enviar mensagem
    Dado que estou na tela de matches
    # E clico em matches
    Wait Until Element Is Visible    ${btn_matches}
    Click Element    ${btn_matches}
    Sleep    time_=5s


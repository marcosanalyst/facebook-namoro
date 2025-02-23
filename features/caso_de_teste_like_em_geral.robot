*** Settings ***
Documentation        Caso de teste like em geral
Resource             ../routes.robot

Test Setup            Abrir aplicativo facebook
Test Teardown         Fechar aplicativo facebook

*** Test Cases ***
caso de teste like em geral
    Dado que clico no icone coracao do menu superior
    E clico fechar bunner
    E clico no botao curtir
    Entao continuo curtindo ate acabar os creditos



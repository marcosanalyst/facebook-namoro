*** Settings ***
Documentation        Caso de teste like em geral
Resource             ../routes.robot

Test Setup            Abrir aplicativo facebook
Test Teardown         Fechar aplicativo facebook

*** Test Cases ***

caso de teste enviar mensagem
    Dado que estou na tela de matches
    E clico em matches
    E clico no primeiro match
    E clico no campo de digitar mensagem
    E digito uma frase aleatoria
    E clico enviar mensagem
    E clico em voltar
    Entao continuo enviando mensagem ate acabar os matches

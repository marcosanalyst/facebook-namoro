*** Settings ***
Documentation    Resources facebook relacionamento
Library    AppiumLibrary
Library    OperatingSystem
Library    Collections
Resource    ../routes.robot


*** Keywords ***

Dado que clico no icone coracao do menu superior
    Sleep   2
    ${x}=  Set Variable    420
    ${y}=  Set Variable    185

    Click A Point   ${x}   ${y}

E clico fechar bunner
    Sleep   1
    ${x2}=  Set Variable    355
    ${y2}=  Set Variable    1150

    Run Keyword And Ignore Error    Click A Point   ${x2}   ${y2}

E clico no botao curtir
    Sleep    1
    Wait Until Element Is Visible    ${btn_curtir}  timeout=10s
    Click Element    ${btn_curtir}

Entao continuo curtindo ate acabar os creditos
    ${creditos_restantes}=  Set Variable    ${TOTAL_CREDITOS}  # Substitua pelo valor total de créditos
    WHILE    ${creditos_restantes} > 0
        Sleep   1
        ${x3}=  Set Variable    495
        ${y3}=  Set Variable    1404
        Click A Point   ${x3}   ${y3}
        Sleep   1
        ${creditos_restantes}=    Evaluate    ${creditos_restantes} - 1
        Log To Console    ${creditos_restantes}
    END

Dado que estou na tela de matches
    Dado que clico no icone coracao do menu superior
    E clico fechar bunner

E clico em matches
    Wait Until Element Is Visible    ${btn_matches}
    Click Element    ${btn_matches}

E clico no primeiro match
    Sleep    3
    Click Element At Coordinates    79    361

E clico no campo de digitar mensagem
    Wait Until Element Is Visible    ${btn_input_mensagem}
    Click Element    ${btn_input_mensagem}

E digito uma frase aleatoria
    ${mensagem}=      Obter mensagem aleatoria
    Input Text    ${btn_input_mensagem}    ${mensagem}

E clico enviar mensagem
    Wait Until Element Is Visible    ${btn_enviar_mensagem}
    Click Element    ${btn_enviar_mensagem}

E clico em voltar
    Wait Until Element Is Visible    ${btn_voltar}
    Click Element    ${btn_voltar}
    Sleep    2
    Click Element    ${btn_voltar}
    Sleep    3
    Click Element    ${btn_matches}
    Sleep    1

Entao continuo enviando mensagem ate acabar os matches
    Sleep    3
    WHILE    True
        E clico no primeiro match
        E clico no campo de digitar mensagem

        # Valida se o campo de input ainda está visível
        ${elemento_existe}=    Run Keyword And Return Status    Element Should Be Visible    ${btn_input_mensagem}

        IF    ${elemento_existe} == False
            BREAK
        END
        E digito uma frase aleatoria
        E clico enviar mensagem
        E clico em voltar
        Sleep    3
    END



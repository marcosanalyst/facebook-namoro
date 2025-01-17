*** Settings ***
Documentation    Resources facebook relacionamento
Library    AppiumLibrary
Library    OperatingSystem
Library    Collections
Resource    ../routes.robot


*** Keywords ***

E clico no icone coracao do menu superior
    Sleep   2
    ${x}=  Set Variable    420
    ${y}=  Set Variable    185

    Click A Point   ${x}   ${y}

E clico fechar bunner
    Sleep   2
    ${x2}=  Set Variable    355
    ${y2}=  Set Variable    1150

    Run Keyword And Ignore Error    Click A Point   ${x2}   ${y2}

E clico no botao curtir
    Sleep    2
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

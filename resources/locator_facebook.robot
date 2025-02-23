*** Settings ***
Documentation    Locators facebook relacionamento

*** Variables ***
${btn_curtir}   xpath=//android.widget.Button[@content-desc="Curtir"]

${btn_matches}  xpath=//android.widget.TextView[@text="Matches"]

${btn_input_mensagem}   xpath=//android.widget.EditText[@content-desc="Digite uma mensagem"]
${btn_enviar_mensagem}      xpath=//android.view.ViewGroup[@content-desc="Enviar"]
${btn_voltar}       xpath=//android.view.ViewGroup[@content-desc="Voltar"]
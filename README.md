# Automação de Dispositivo Móvel com Robot Framework e Appium

Este projeto é uma automação para dispositivos móveis desenvolvida com o **Robot Framework** e a biblioteca **Appium**, com suporte a pequenas lógicas implementadas em **Python**. A automação foi criada e configurada na IDE **PyCharm**.

---

## 📋 Funcionalidade

A automação realiza as seguintes ações no aplicativo do **Facebook**:

1. Abre o aplicativo do **Facebook** no dispositivo móvel.
2. Navega até o ícone do **Facebook Namoro**.
3. Começa a curtir perfis automaticamente, com base no número de créditos configurado em uma variável.

---

## 🛠️ Tecnologias Utilizadas

- **Robot Framework**: Para estruturação e execução dos testes.
- **Appium Library**: Para interação com dispositivos móveis.
- **Python**: Para implementar pequenas lógicas complementares.
- **PyCharm**: Ambiente de desenvolvimento utilizado no projeto.

---

## 📦 Pré-requisitos

Antes de começar, certifique-se de ter as seguintes ferramentas instaladas:

- Python 3.8+ ([instalar aqui](https://www.python.org/downloads/))
- Appium Server ([instalar aqui](http://appium.io/))
- IDE PyCharm (opcional, mas recomendado)
- Robot Framework ([documentação](https://robotframework.org/))
- Appium Library para Robot Framework:
  ```bash
  pip install robotframework-appiumlibrary

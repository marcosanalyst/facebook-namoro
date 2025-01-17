# Automação de Dispositivo Móvel com Robot Framework e Appium

Este projeto é uma automação para dispositivos móveis desenvolvida utilizando o **Robot Framework** e a biblioteca **Appium**, com suporte a lógicas adicionais implementadas em **Python**. A automação foi configurada e executada na IDE **PyCharm**.

---

## 📋 Funcionalidades

A automação tem como objetivo interagir com o **Facebook Namoro** e gerenciar ações de forma totalmente automática. As principais funcionalidades incluem:

1. **Acessar o Facebook Namoro**:
   - Abre o aplicativo do Facebook no dispositivo móvel.
   - Navega até o ícone do Facebook Namoro.

2. **Curtir Perfis Automaticamente**:
   - Curte perfis com base no número de créditos configurado em uma variável.

3. **Enviar Mensagens aos Matches** *(Sugestão de Nova Funcionalidade)*:
   - Percorre todos os matches encontrados na seção de chat.
   - Seleciona uma frase aleatória de uma lista pré-definida contendo mais de **100 frases** comuns para início de conversa.
   - Envia a frase para cada match.
   - Após enviar uma mensagem, passa para o próximo match e continua até completar todos.

---

## 🛠️ Tecnologias Utilizadas

- **Robot Framework**: Para estruturar e gerenciar os testes.
- **Appium Library**: Para interagir com aplicativos móveis.
- **Python**: Para implementar as lógicas adicionais, como a seleção de frases aleatórias.
- **PyCharm**: IDE utilizada para desenvolvimento e execução.

---

## 📦 Pré-requisitos

Antes de começar, você precisará ter:

- **Python 3.8+** ([instalar aqui](https://www.python.org/downloads/))
- **Appium Server** ([instalar aqui](http://appium.io/))
- **PyCharm IDE** (opcional, mas recomendado)
- **Bibliotecas Python**: 
  ```bash
  pip install robotframework robotframework-appiumlibrary

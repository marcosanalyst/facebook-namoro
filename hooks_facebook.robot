*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Library    String
Library    DateTime
Library    String
Resource        routes.robot

*** Variables ***
${TOTAL_CREDITOS}   10

*** Variables ***
@{lista_mensagens}  Oi, tudo bem?  Olá! Como vai você?  Adorei seu perfil! Vamos conversar?  O que você gosta de fazer no tempo livre?  Qual é o seu lugar favorito no mundo?  Se você pudesse viajar agora, para onde iria?  Você gosta mais de praia ou montanha?  Qual o último filme que você assistiu?  Oi! Como está o seu dia?  Você gosta de café ou chá?  Se pudesse ter qualquer superpoder, qual escolheria?  Qual é a sua música favorita?  Você prefere gatos ou cachorros?  Adoro conhecer pessoas novas! O que você gosta de fazer?  Qual foi a última coisa que fez você sorrir?  Você gosta de aventuras ou prefere algo tranquilo?  Se pudesse jantar com qualquer pessoa no mundo, quem seria?  Qual é o seu prato favorito?  Você prefere séries ou filmes?  Como descreveria o seu dia perfeito?  Você já viajou para fora do país? Se sim, qual lugar gostou mais?  Qual é o seu hobby favorito?  Se pudesse aprender algo novo, o que seria?  Você tem um livro ou autor favorito?  Gosta de esportes? Qual é o seu favorito?  Prefere música ao vivo ou shows grandes?  O que te faz feliz em um dia comum?  Qual é a sua estação do ano favorita?  Se pudesse escolher um talento, qual seria?  Você gosta de cozinhar? Qual prato faz melhor?  Qual foi a coisa mais interessante que aprendeu recentemente?  Você tem algum animal de estimação?  Gosta de assistir reality shows ou algo mais sério?  Você prefere cidade grande ou lugares tranquilos?  Qual é o seu estilo de música favorito?  Se pudesse mudar algo no mundo, o que seria?  Você gosta de arte? Qual é o seu artista favorito?  Qual foi a melhor viagem que já fez?  Você gosta de dançar?  Qual seria a sua refeição dos sonhos?  Se pudesse reviver um momento, qual seria?  Você tem uma meta para este ano?  Gosta de jogos? Qual o seu favorito?  O que você mais valoriza em uma amizade?  Você tem uma memória especial da infância?  Prefere cinema ou teatro?  Gosta de tecnologia ou prefere algo mais analógico?  Qual é o seu gênero literário favorito?  Você gosta de esportes radicais?  Qual é a sua comida preferida em um dia frio?  O que você gosta de fazer para relaxar?  Gosta de viajar de carro ou avião?  Você tem alguma tradição familiar especial?  Qual foi o melhor show que já foi?  Prefere doce ou salgado?  Você gosta de colecionar algo?  Qual seria o seu destino de férias ideal?  Se pudesse criar uma invenção, o que seria?  Gosta de eventos culturais, como feiras ou museus?  Você já tentou algo novo que te surpreendeu?  Qual é o seu maior sonho?  O que você mais gosta no seu trabalho ou estudo?  Você prefere um encontro tranquilo ou cheio de aventuras?  Gosta de pintar, desenhar ou fazer algo criativo?  Qual é o seu maior orgulho?  Gosta de resolver quebra-cabeças ou desafios mentais?  Você tem um talento secreto?  Qual é a sua memória favorita do ano passado?  Se pudesse passar um dia com uma celebridade, quem seria?  Você gosta de cozinhar ou prefere pedir comida?  Qual é a sua sobremesa favorita?  Se pudesse morar em qualquer lugar, onde seria?  Você tem algum filme ou série que assistiu várias vezes?  Qual é a sua cor favorita e por quê?  Você gosta de plantas ou jardinagem?  O que faz para se manter ativo ou saudável?  Se pudesse ter qualquer animal como pet, qual seria?  Gosta de ler notícias ou prefere livros de ficção?  Você tem alguma tradição que segue todos os anos?  Prefere lugares frios ou quentes?  Qual seria sua viagem dos sonhos?  Você já experimentou alguma comida exótica?  Você gosta de música instrumental?  Qual é o melhor conselho que já recebeu?  Qual seria seu papel em uma aventura de filme?  Gosta de aprender novos idiomas?  Se pudesse mudar algo em sua rotina, o que seria?  Você gosta de fotografar momentos especiais?  O que acha mais importante em um relacionamento?  Qual é o presente mais especial que já recebeu?  Se pudesse viver em outra época, qual seria?  Você gosta de fazer caminhadas ou trilhas?  Qual é a sua cidade favorita?  Se pudesse escrever um livro, sobre o que seria?  Qual é a coisa mais espontânea que já fez?




*** Keywords ***

Abrir aplicativo facebook
    Open Application    http://localhost:4723/wd/hub
    ...     platformName=Android
    ...     deviceName=moto_e40
    ...     udid=ZF523W638Q
    ...     appPackage=com.facebook.katana
    ...     appActivity=com.facebook.katana.LoginActivity
    ...     automationName=UIAutomator2
    ...     autoGrantPermissions=${True}
    ...     noReset=${True}
    ...     fullReset=${False}

Fechar aplicativo facebook
    Close All Applications

Obter mensagem aleatoria
    ${list_size}=    Get Length    ${LISTA_MENSAGENS}
    ${random_index}=    Evaluate    random.randint(0, ${list_size} - 1)    modules=random
    ${random_item}=    Get From List    ${LISTA_MENSAGENS}    ${random_index}
    [RETURN]    ${random_item}
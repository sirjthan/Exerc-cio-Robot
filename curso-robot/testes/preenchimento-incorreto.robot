*** Settings ***
Resource    ../resource/main.robot
Test Setup    Dado que eu acesse o organo
Test Teardown    Fechar o navegador

*** Variables ***
${CAMPO_CARD}             id:form-botao

*** Test Cases ***
Verificar se quando um campo obrigatorio não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique no botão criar card
    Então sistema deve apresentar mensagem de campo obrigatório


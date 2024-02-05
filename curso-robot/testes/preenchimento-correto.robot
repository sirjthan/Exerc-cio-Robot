*** Settings ***
Resource    ../resource/main.robot
Test Setup    Dado que eu acesse o organo
Test Teardown    Fechar o navegador



*** Test Cases ***
Verificar preenchimento dos campos do formulário corretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    
    Dado que preencha os campos do formulário
    E clique no botão criar card
    Então identificar card no time esperado

Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    Dado que preencha os campos do formulário
    E clique no botão criar card
    Então identificar 3 cards no time esperado  

Verificar se é possível criar um card para cada time disponível se preenchermos os campos corretamente
    Dado que preencha os campos do formulário
    Então criar e identificar um card em cada time disponível


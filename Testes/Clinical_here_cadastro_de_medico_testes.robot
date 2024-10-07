*** Settings ***
Documentation	Essa suíte testa a aplicação web da Clinical Here
Resource	clinical_here_cadastro_de_medico.robot
Test Setup	Abrir o navegador

*** Test Cases ***
Caso de Teste 01 - Cadastrar um médico com um cpf já registrado
	[Documentation]	Verificar se o site vai abrir
	[Tags]	cadastro_medico
	Acessar a home do site Clinical Here
	Digitar o CPF do usuário ativo no campo
	Digitar a senha do usuario ativo
	Acionar o botão entrar
*** Settings ***
Documentation	Essa suíte testa o site da Clinical Here
Resource	Teste_Cadastro_resources.robot
Test Setup	Abrir o navegador

*** Test Cases ***
Caso de Teste 01 - Cadastrar um paciente com um cpf que não está registrado."
	[Documentation]	Esse teste verifica o site da Clinical Here
	[Tags]	site_principal
	Acessar a home page do site Clinical Here
	Digitar no campo o CPF do usuário ativo
	Digitar a senha do usuario ativo
	Acionar o botão entrar
	
	
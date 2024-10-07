*** Settings ***
Documentation	Essa suíte testa o site da Clinical Here
Resource	Teste_Cadastro_resources.robot
Test Setup	Abrir o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso site da Clinical Here"
	[Documentation]	Esse teste verifica o site da Clinical Here
	[Tags]	site_principal
	Acessar a home page do site Clinical Here
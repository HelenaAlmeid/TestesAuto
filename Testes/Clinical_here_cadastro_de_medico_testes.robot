*** Settings ***
Documentation	Essa suíte testa a aplicação web da Clinical Here
Resource	clinical_here_cadastro_de_medico.robot
Test Setup	Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Cadastrar um médico com um cpf ainda não registrado
	[Documentation]	Verificar se o site vai permitir o Cadastro
	[Tags]	cadastro_medico
	Acessar a home do site Clinical Here
	Digitar o CPF do usuário ativo no campo
	Digitar a senha do usuario ativo
	Acionar o botão entrar
	Clicar no menu "Cadastro de Médico"
	Preencher o campo Nome completo com um nome válido
	Preencher o campo CPF com um CPF válido
	Preencher o campo Data de Nascimento com uma data válida
	Preencher o campo CRM com um crm válido
	Preencher o campo Especialidade com uma especialidade válida
	Preencher o campo Senha com uma senha válida
	Preencher o campo Confirme a senha com a mesma senha do campo Senha
	Acionar o botão "Cadastrar"
	Verificar se foi aberto uma página contendo a mensagem de confirmação

Caso de Teste 02 - Cadastrar um médico com um cpf já registrado
	[Documentation] Verificar se o site não vai permitir o Cadastro
	[Tags]	cadastro_medico
	Acessar a home do site Clinical Here
	Digitar o CPF do usuário ativo no campo
	Digitar a senha do usuario ativo
	Acionar o botão entrar
	Clicar no menu "Cadastro de Médico"
	Preencher o campo Nome completo com um nome válido
	Preencher o campo CPF com um cpf já cadastrado
	Preencher o campo Data de Nascimento com uma data válida
	Preencher o campo CRM com um crm válido
	Preencher o campo Especialidade com uma especialidade válida
	Preencher o campo Senha com uma senha válida
	Preencher o campo Confirme a senha com a mesma senha do campo Senha
	Acionar o botão "Cadastrar"
	


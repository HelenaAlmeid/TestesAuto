*** Settings ***
Documentation	Essa suíte testa o site da Clinical Here
Resource	Teste_Cadastro_Inválido_resources.robot
Test Setup	Abrir o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso site da Clinical Here"
	[Documentation]	Esse teste verifica o site da Clinical Here
	[Tags]	site_principal
	Acessar a home page do site Clinical Here
	Digitar o cpf de uma recepcionista ativa no campo CPF
	Digitar a senha de uma recepcionista ativa no campo Senha
	Acionar o botão "Entrar"
	Clicar no menu "Cadastro de Paciente"
	Preencher o campo Nome completo com um nome válido
	Preencher o campo CPF com um CPF inválido
	Preencher o campo Data de Nascimento com uma data válida
	Preencher o campo Senha com uma senha válida
	Preencher o campo Confirme a senha com a mesma senha do campo Senha
	Preencher o campo Altura corretamente
	Preencher o campo Peso corretamente
	Preencher o campo Telefone corretamente
	Preencher o campo Gênero com um gênero válido
	Acionar o botão "Cadastrar"
	Verificar se é exibida a mensagem de erro "${mensagem_erro}"

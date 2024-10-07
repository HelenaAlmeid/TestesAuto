*** Settings ***
Documentation    Esse caso de uso testa o Cadastro de Médico
Resource         clinica_here_cadastro_medico_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Cadastrar um médico com um crm já cadastrado
	[Documentation]    Esse teste verifica a validação do campo crm ao realizar o cadastro
	[Tags]             cadastro_medico_sem_crm
	Acessar a página de login do site
	Digitar o cpf de uma recepcionista ativa no campo CPF 
	Digitar a senha de uma recepcionista ativa no campo Senha
	Acionar o botão "Entrar"
    Clicar no menu "Cadastro de Médico"
	Preencher o campo Nome completo com um nome válido
	Preencher o campo CPF com um CPF válido
	Preencher o campo Data de Nascimento com uma data válida
	Preencher o campo CRM com um crm já cadastrado
	Preencher o campo Especialidade com uma especialidade válida
	Preencher o campo Senha com uma senha válida
	Preencher o campo Confirme a senha com a mesma senha do campo Senha
	Acionar o botão "Cadastrar"
	Verificar se é exibida a mensagem de erro "Esse CRM já foi cadastrado anteriormente!"	
    

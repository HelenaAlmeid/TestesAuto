*** Settings ***
Documentation    Esse teste suite testa o agendamento de consulta pela recepcionista
Resource         clinica_here_agenda_do_medico_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Realizar o agendamento de consulta pela recepcionista com um cpf de paciente que não esteja cadastrado
	[Documentation]    Esse teste verifica o campo cpf ao realizar o agendamento
	[Tags]             agendar_uma_consulta_sem_cpf
	Acessar a página de login do site
	Digitar o cpf de uma recepcionista ativa no campo CPF 
	Digitar a senha de uma recepcionista ativa no campo Senha
	Acionar o botão "Entrar"
	Clicar no link com o nome de um médico ativo
	Direcionar para a página de Agenda do Médico Ativo
	Acionar o botão "Agendar Consulta"
    Verificar se há no campo CRM o crm do médico escolhido
	Preencher o campo CPF do Paciente com um cpf de um paciente não ativo
	Preencher o campo Data da Consulta com uma data disponível
	Preencher o campo Hora da Consulta com um horário disponível
	Acionar o botão "Confirmar"
	Verificar se aparce a mensagem de erro "Digite um CPF válido!"
	
    

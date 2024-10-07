*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}		http://localhost/ExperienciaCriativa/parte-1/php/
${CPF_ATIVO}	431.628.700-11
${SENHA_ATIVA}		Senha01@
${nome_medico_ativo}    Isabelle Vizzu
${URL_do_medico_ativo}    http://localhost/ExperienciaCriativa/parte-1/php/agenda_recepcionista_php.php?crm=1111111&nome=Isabelle%20Vizzu
${crm_medico_ativo}    1111111
${cpf_de_paciente_inativo}    1097237328239
${data_disponivel}    25112024
${horario_disponivel}    1000
${mensagem_de_erro}    Digite um CPF válido!


*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Fechar o navegador
	Capture Page Screenshot
	Close Browser

Acessar a página de login do site
	Go To	url=${URL}

Digitar o cpf de uma recepcionista ativa no campo CPF
	Input Text    id=cpf    ${CPF_ATIVO}

Digitar a senha de uma recepcionista ativa no campo Senha
	Input Text    id=senha    ${SENHA_ATIVA}

Acionar o botão "Entrar"
    Click Element    name=botao_login

Clicar no link com o nome de um médico ativo
    Click Link    ${nome_medico_ativo}

Direcionar para a página de Agenda do Médico Ativo
    ${url_atual}=    Get Location
	Should Contain    ${url_atual}    ${URL_do_medico_ativo}

Acionar o botão "Agendar Consulta"
    Click Element    name=adicionar

Verificar se há no campo CRM o crm do médico escolhido
    ${valor}=    Get Value    name=crm
	Should Be Equal As Strings    ${valor}    ${crm_medico_ativo}

Preencher o campo CPF do Paciente com um cpf de um paciente não ativo
	Input Text	name=cpf        ${cpf_de_paciente_inativo}

Preencher o campo Data da Consulta com uma data disponível
    Input Text	name=data        ${data_disponivel}

Preencher o campo Hora da Consulta com um horário disponível
    Input Text	name=horario        ${horario_disponivel}

Acionar o botão "Confirmar"
    Click Element    name=confirmar

Verificar se aparce a mensagem de erro "${mensagem_de_erro}"
    ${mensagem}=    Get Text    css=section.section_invalido p
    Should Be Equal As Strings    ${mensagem}    ${mensagem_de_erro}








*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}		http://localhost/ExperienciaCriativa/parte-1/php/
${CPF_ATIVO}	431.628.700-11
${SENHA_ATIVA}		Senha01@
${opcao_menu}    Cadastro de Médico
${nome_valido}    Bianca Felícia de Fernandes
${cpf_valido}    695.183.520-97
${crm_valido}	1919190
${crm_repetido}    5555555
${data_valida}    25071980
${especialidade}    1
${senha_valida}    Senha02@
${mensagem_erro}    Esse CRM já foi cadastrado anteriormente!
${mensagem_de_confirmacao}	O médico foi cadastrado com sucesso em nosso sistema.
${mensagem_erro_cpf}	Esse CPF já foi cadastrado anteriormente!



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

Clicar no menu "Cadastro de Médico"
    Click Link    ${opcao_menu}

Preencher o campo Nome completo com um nome válido
	Input Text    id=nome    ${nome_valido}

Preencher o campo CPF com um CPF válido
	Input Text    id=cpf    ${cpf_valido}

Preencher o campo Data de Nascimento com uma data válida
	Input Text    id=data    ${data_valida}

Preencher o campo CRM com um crm já cadastrado
	Input Text    id=crm    ${crm_repetido}

Preencher o campo Especialidade com uma especialidade válida
    Select From List By Value    id=especialidade    ${especialidade}

Preencher o campo Senha com uma senha válida
	Input Text    id=senha    ${senha_valida}

Preencher o campo Confirme a senha com a mesma senha do campo Senha
	Input Text    id=confirmaSenha    ${senha_valida}

Acionar o botão "Cadastrar"
    Click Element    id=Enviar

Verificar se é exibida a mensagem de erro "${mensagem_erro}"
    ${mensagem}=    Get Text    css=section.section_invalido p
    Should Be Equal As Strings    ${mensagem}    ${mensagem_erro}

Preencher o campo CRM com um crm válido
	Input Text    id=crm    ${crm_valido}

Verificar se é exibida a mensagem de confirmação "${mensagem_de_confirmacao}"
	${mensagem}=    Get Text    css=section.success-message p
    Should Be Equal As Strings    ${mensagem}    ${mensagem_de_confirmacao}

Preencher o campo CPF com um CPF já cadastrado
	Input Text    id=cpf    ${CPF_ATIVO}

Verificar se é exibida a mensagem de erro do CPF repetido "${mensagem_erro_cpf}"
    ${mensagem}=    Get Text    css=section.section_invalido p
    Should Be Equal As Strings    ${mensagem}    ${mensagem_erro_cpf}


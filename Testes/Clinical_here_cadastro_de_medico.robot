*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}	http://localhost/ExperienciaCriativa/ExperienciaCriativa/parte-1/php/
${USUARIO}	431.628.700-11
${SENHA}	Senha01@
${opcao_menu}	Cadastro de Médico
${nome_valido}	Julia Helena
${cpf_valido}	054.813.400-62
${cpf_invalido}	431.628.700-11
${data_valida}	10091970
${crm_valido}	1919190
${especialidade}	5
${senha_valida}	Senha09@
${mensagem_de_confirmacao}	O médico foi cadastrado com sucesso em nosso sistema.


*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}	
	Maximize Browser Window

Fechar o navegador
	Capture Page Screenshot
	Close Browser

Acessar a home do site Clinical Here
	Go To	url=${URL}
	Capture Page Screenshot

Digitar o CPF do usuário ativo no campo
	Input Text	id=cpf	${USUARIO}

Digitar a senha do usuario ativo
	Input Text	id=senha	${SENHA}

Acionar o botão entrar
	Click Element	name=botao_login

Clicar no menu "Cadastro de Médico"
	Click Link	${opcao_menu}

Preencher o campo Nome completo com um nome válido
	Input Text	id=nome	${nome_valido}

Preencher o campo CPF com um CPF válido
	Input Text	id=cpf	${cpf_valido}

Preencher o campo Data de Nascimento com uma data válida
	Input Text	id=data	${data_valida}

Preencher o campo CRM com um crm válido
	Input Text	id=crm	${crm_valido}

Preencher o campo Especialidade com uma especialidade válida
	Select From List By Value	id=especialidade	${especialidade}

Preencher o campo Senha com uma senha válida
	Input Text	id=senha	${senha_valida}

Preencher o campo Confirme a senha com a mesma senha do campo Senha
	Input Text	id=confirmaSenha	${senha_valida}

Acionar o botão "Cadastrar"
	Click Element	id=Enviar

Verificar se foi aberto uma página contendo a mensagem de confirmação
	${mensagem}=	Get Text	css=section.success-message p
	Should Be Equal As Strings	${mensagem}	${mensagem_de_confirmacao}

Preencher o campo CPF com um cpf já cadastrado
	Input Text	id=cpf	${cpf_invalido}

Verificar se é exibida a mensagem de erro 

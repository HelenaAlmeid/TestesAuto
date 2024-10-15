*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}	http://localhost/ExperienciaCriativa/parte-1/php/
${CPF}	431.628.700-11
${SENHA}	Senha01@
${opcao_menu}	Cadastro de Paciente
${nome_valido}	José Maria dos Reis
${CPF_invalido}	431.628.700-11
${CPF_valido}	892.107.420-10
${data_nascimento}	11052003
${Senha}	Senha03@
${altura}	1.70
${peso}	55
${telefone}	343234323
${genero}	Masculino
${mensagem_erro}	Esse CPF já foi cadastrado anteriormente!
${mensagem_valida}	'O paciente foi cadastrado com sucesso em nosso sistema.'


*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Fechar o navegador
	Capture Page Screenshot
	Close Browser

Acessar a home page do site Clinical Here
	Go To    url=${URL}
	Capture Page Screenshot

Digitar o cpf de uma recepcionista ativa no campo CPF
	Input Text	id=cpf	${CPF}

Digitar a senha de uma recepcionista ativa no campo Senha
	Input Text	id=senha	${SENHA}

Acionar o botão "Entrar"
	Click Element	name=botao_login

Clicar no menu "Cadastro de Paciente"
	Click Link	${opcao_menu}

Preencher o campo Nome completo com um nome válido
	Input Text	id=nome	${nome_valido}

Preencher o campo CPF com um CPF inválido
	Input Text	id=cpf	${CPF_invalido}

Preencher o campo Data de Nascimento com uma data válida
	Input Text	id=data	${data_nascimento}

Preencher o campo Senha com uma senha válida
	Input Text	id=Senha	${Senha}

Preencher o campo Confirme a senha com a mesma senha do campo Senha
	Input Text	id=confirmaSenha	${Senha}

Preencher o campo Altura corretamente
	Input Text	id=alt	${altura}

Preencher o campo Peso corretamente
	Input Text	id=pes	${peso}

Preencher o campo Telefone corretamente
	Input Text	id=tel	${telefone}

Preencher o campo Gênero com um gênero válido
	Select From List By Value	id=sexo	${genero}

Acionar o botão "Cadastrar"
	Click Element	id=Enviar

Verificar se é exibida a mensagem de erro "${mensagem_erro}"
	${mensagem}=	Get Text	css=section.section_invalido p
	Should Be Equal As Strings	${mensagem}	${mensagem_erro}

Preencher o campo CPF com um CPF válido
	Input Text	id=cpf	${CPF_valido}

Verificar se é exibida a mensagem de confirmação "${mensagem_valida}"
	${mensagem_v}=	Get Text	css=section.sucess-message p
	Should Be Equal As Strings	${mensagem_v}	${mensagem_valida}


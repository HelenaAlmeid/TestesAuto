*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}	http://localhost/ExperienciaCriativa/ExperienciaCriativa/parte-1/php
${USUARIO}	431.628.700-11
${SENHA}	Senha01@

*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Acessar a home page do site Clinical Here
	Go To    url=${URL}
	Capture Page Screenshot

Digitar no campo o CPF do usuário ativo
	Input Text	css:input[name=cpf]	${USUARIO}

Digitar a senha do usuario ativo
	Input Text	css:[name=senha]	${SENHA}

Acionar o botão entrar
	Click Elemnt	css:submit[name=botao_login]
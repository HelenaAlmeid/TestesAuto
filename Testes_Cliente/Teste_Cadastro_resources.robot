*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}	http://localhost/ExperienciaCriativa/ExperienciaCriativa/parte-1/php

*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Acessar a home page do site Clinical Here
	Go To    url=${URL}
	Capture Page Screenshot
   
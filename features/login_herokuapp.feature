#language: pt

Funcionalidade: Efetuar Login
	Eu como usuario do site
	Desejo realizar login no site herokuapp
	Para visualizar o conteudo do site

	Contexto:
		Dado que eu acesse o site herokuapp
		
	Esquema do Cenario: Relizar login na aplicacao
		E efetue o login inserindo usuário "<user>" e senha "<password>"
		Quando validar mensagem de acesso You logged into a secure area! 
		Entao realizar logout no site
		E validar mensagem de logout You logged out of the secure area!

	Exemplos:
	|	user     | password             | 
	|	tomsmith | SuperSecretPassword! | 




	

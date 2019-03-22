	#language: pt

	Funcionalidade: Passagens de aviao
		Eu como usuario do site
		Desejo efetuar a compra de passagens aereas
	  Para uma viagem a lazer

	  Cenario: Efetuando cadastro de dados pessoais.
	    Dado que eu esteja logado
			Quando escolho a compania de viagem e classe
	    E preencher meus dados
	    Entao valido se Foi gerado o Flight confirmation NUMBER com sucesso

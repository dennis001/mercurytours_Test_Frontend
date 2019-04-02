	#language: pt

	Funcionalidade: Passagens de aviao
		Eu como usuario do site
		Desejo efetuar a compra de passagens aereas
	  Para uma viagem a lazer

	 Esquema do Cenario: Efetuando cadastro de dados pessoais.
	    Dado que eu esteja logado
			Quando defino os detalhes da viagem com "<ida>","<mes_ida>","<dia_ida>","<volta>","<mes_volta>", "<dia_volta>" e classe
	    E preencher meus dados
	    Entao valido se Foi gerado o Flight confirmation NUMBER com sucesso

			Exemplos:
			|  ida   |  mes_ida | dia_ida |   volta  | mes_volta | dia_volta |
			| London | December |      20 | Acapulco |  October  |        21 |

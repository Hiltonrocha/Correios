# language: pt
# encoding: utf-8

Funcionalidade: Consultar CEP

@busca_por_cep
Esquema do Cenário: Busca por CEP
	Dado que eu acesse o site dos Correios
	Quando fazer uma consulta "<cep>"
	Então a busca deve ser feita e exibida o nome da "<rua>"

Exemplos:
|  cep 		| rua					 	|
|08553-330  | Rua Queluz				|
|04857-350  | Rua Falcão Peregrino	    |
	

@busca_por_rua
Esquema do Cenário: Busca por Nome de rua
	Dado que eu acesse o site dos Correios
	Quando fazer busca de logradouro com o nome da rua"<logradouro>"
	Então a busca deve ser feita e exibir os resultados "<cep>"

Exemplos:
|  logradouro 					| cep					 	|
|  Rua Carolina Vergueiro		| 99020-010 				|
|  Avenida Vinte e Três de Maio | 01316-060                 |


@buscar_rastreamento
Esquema do Cenário: Busca por Rastreamento
	Dado que eu acesse o site dos Correios
	Quando fazer uma busca por "<rastreamento>"
	Então deve ser exibido o status do rastreamento 

Exemplos:
| rastreamento  |
| DU351040086BR |
| PN779916648BR |
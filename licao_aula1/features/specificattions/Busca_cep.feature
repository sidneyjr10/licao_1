#language:pt
Funcionalidade: Busca CEP

@Busca_cep_por_localidade
Cenario: Busca CEP por Localidade
Dado que acessei o site "http://www.buscacep.correios.com.br/sistemas/buscacep/buscaCep.cfm"
Quando faco uma buscsa de CEP por localidade "SP", "Osasco", "Rua", "Arminda Beranger","1031"
Entao visualizo o CEP "06180-130" no resultado da buscaCep



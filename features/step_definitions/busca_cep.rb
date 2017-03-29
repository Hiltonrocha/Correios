## teste

Dado(/^que eu acesse o site dos Correios$/) do
  Home.new.visita_home
end

Quando(/^fazer uma consulta "([^"]*)"$/) do |cep|
  Home.new.consulta_cep(cep)

end

Então(/^a busca deve ser feita e exibida o nome da "([^"]*)"$/) do |rua|
  Home.new.valida_rua(rua)
 
end
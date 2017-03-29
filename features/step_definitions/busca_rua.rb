Quando(/^fazer busca de logradouro com o nome da rua"([^"]*)"$/) do |logradouro|
  Home.new.consulta_cep(logradouro)

end

Então(/^a busca deve ser feita e exibir os resultados "([^"]*)"$/) do |cep|
  Home.new.valida_cep(cep)
end
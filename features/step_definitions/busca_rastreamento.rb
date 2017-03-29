Quando(/^fazer uma busca por "([^"]*)"$/) do |rastreamento|
  Home.new.consulta_rastreamento(rastreamento)

end

Então(/^deve ser exibido o status do rastreamento$/) do
  Home.new.valida_rastreamento
end
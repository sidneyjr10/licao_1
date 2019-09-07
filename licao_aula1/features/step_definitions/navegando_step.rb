Dado("que acessei po site {string}") do |url|
    visit url
end

Quando("faco uma buscsa por {string}") do |busca|
    @busca = busca
    fill_in "q", with: busca
    ##click_on "Estou com sorte"
    #first(:css, "input[value='Estou com sorte']")
    Capybara.ignore_hidden_elements = true
    #click_on "Estou com sorte"
    #first(:css, "input[value='Estou com sorte']").click
    click_button("Estou com sorte")    
    sleep 5
end

Entao("visualizo o resultado da busca na página") do
   page.has_text?(@busca)
end
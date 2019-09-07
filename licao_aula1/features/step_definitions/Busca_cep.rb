Dado("que acessei o site {string}") do |url|
    visit url
    page.save_screenshot('screen.png')
end

Quando("faco uma buscsa de CEP por localidade {string}, {string}, {string}, {string},{string}") do |uf, localidade, tipo, logradouro, numero|
    select uf, from:'UF'
    fill_in 'Localidade', with: localidade
    select tipo, from:'Tipo'
    fill_in 'Logradouro', with: logradouro
    fill_in 'Numero', with: numero
    first(:css, "input[value='Buscar']").click
    sleep 3
    #click_on "Buscar"
        
end

Entao("visualizo o CEP {string} no resultado da buscaCep") do |cep|
    page.save_screenshot('Visualizar_cep.png')

    expect(page).to have_css("td", :text => cep)
    
  end

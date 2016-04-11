# coding: utf-8

feature 'gerenciar Fabricante' do

  scenario 'incluir Fabricante' do 

    visit new_fabricante_path
    preencher_e_verificar_fabricante
  end

  scenario 'alterar Fabricante' do 

    fabricante = FactoryGirl.create(:fabricante)
    visit edit_fabricante_path(fabricante)
    preencher_e_verificar_fabricante

  end

   scenario 'excluir fabricante' do 

    fabricante = FactoryGirl.create(:fabricante)
    visit fabricantes_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_fabricante

      fill_in 'Nome',     :with => "Luiz"
      fill_in 'Endereço',  :with => "Rua zero"
      fill_in 'Numero',     :with => "400"
      fill_in 'CNPJ', :with => "1111111111111"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Luiz'
      expect(page).to have_content 'Endereço: Rua zero'
      expect(page).to have_content 'Numero: 400'
      expect(page).to have_content 'CNPJ: 1111111111111'

  end
end

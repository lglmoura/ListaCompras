
feature 'gerenciar Produto' do

  before(:each) do
    @fabricante = create(:fabricante, nome: "Piraque")
  end


  let(:dados) do {

    nome: "Vaquinha",
    unidade: "G",
    quantidade: "100",
    fabricante: "Piraque"
   }
  end

  scenario 'incluir produto' do #, :js => true  do
    visit new_produto_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar produto' do #, :js => true  do

    produto = FactoryGirl.create(:produto, fabricante: @fabricante )

    visit edit_produto_path(produto)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir produto' do #, :js => true  do

    produto = FactoryGirl.create(:produto, fabricante: @fabricante)
    visit produtos_path
    
    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Nome',  with: dados[:nome]
    fill_in 'Unidade',  with: dados[:unidade]
    fill_in 'Quantidade', with: dados[:quantidade]
    select dados[:fabricante], from: "Fabricante"
    

  end

  def verificar(dados)

    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Unidade: #{dados[:unidade]}"
    page.should have_content "Quantidade: #{dados[:quantidade]}"
    page.should have_content "Fabricante: #{dados[:fabricante]}"

  end

end
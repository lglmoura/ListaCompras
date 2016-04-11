class CreateFabricantes < ActiveRecord::Migration
  def change
    create_table :fabricantes do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :cnpj

      t.timestamps null: false
    end
  end
end

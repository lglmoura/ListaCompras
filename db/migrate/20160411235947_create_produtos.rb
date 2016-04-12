class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :unidade
      t.float :quantidade
      t.references :fabricante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

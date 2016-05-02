class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nome
      t.string :super_id

      t.timestamps null: false
    end
  end
end

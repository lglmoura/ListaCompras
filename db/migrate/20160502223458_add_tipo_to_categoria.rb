class AddTipoToCategoria < ActiveRecord::Migration
  def change
    add_column :categorias, :tipo, :string
    add_column :categorias, :quantidade, :string
  end
end

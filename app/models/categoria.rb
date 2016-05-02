class Categoria < ActiveRecord::Base
	has_many :subcategorias, class_name: "Categoria", foreign_key: "super_id"
	belongs_to :super, class_name: "Categoria"
end

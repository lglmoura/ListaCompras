json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :nome, :super_id
  json.url categoria_url(categoria, format: :json)
end

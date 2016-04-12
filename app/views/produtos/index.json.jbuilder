json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :unidade, :quantidade, :fabricante_id
  json.url produto_url(produto, format: :json)
end

json.fabricante(@fabricantes) do |fabricante|
  json.extract! fabricante, :id, :nome, :endereco, :numero, :cnpj
  json.url fabricante_url(fabricante, format: :json)
end

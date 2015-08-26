json.array!(@tallas) do |talla|
  json.extract! talla, :id, :titulo, :descripcion
  json.url talla_url(talla, format: :json)
end

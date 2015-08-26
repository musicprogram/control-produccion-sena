json.array!(@medida_tallas) do |medida_talla|
  json.extract! medida_talla, :id, :medida_id, :talla_id, :fichatecnica_id, :centimetros, :tolerancia
  json.url medida_talla_url(medida_talla, format: :json)
end

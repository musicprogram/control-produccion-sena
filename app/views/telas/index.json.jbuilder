json.array!(@telas) do |tela|
  json.extract! tela, :id, :nombre, :descripcion, :observaciones, :ayuda_id
  json.url tela_url(tela, format: :json)
end

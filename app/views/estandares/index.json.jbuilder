json.array!(@estandares) do |estandar|
  json.extract! estandar, :id, :descripcion, :ayuda_id
  json.url estandar_url(estandar, format: :json)
end

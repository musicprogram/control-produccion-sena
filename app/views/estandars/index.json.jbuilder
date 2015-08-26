json.array!(@estandars) do |estandar|
  json.extract! estandar, :id, :descripcion
  json.url estandar_url(estandar, format: :json)
end

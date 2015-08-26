json.array!(@proveedor_procesoexts) do |proveedor_procesoext|
  json.extract! proveedor_procesoext, :id, :proveedor_id, :procesoext_id, :descripcion, :observaciones, :precio
  json.url proveedor_procesoext_url(proveedor_procesoext, format: :json)
end

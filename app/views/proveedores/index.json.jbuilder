json.array!(@proveedores) do |proveedor|
  json.extract! proveedor, :id, :nit, :nombre, :telefono
  json.url proveedor_url(proveedor, format: :json)
end

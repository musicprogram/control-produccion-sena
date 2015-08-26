json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :nombre, :descripcion
  json.url modulo_url(modulo, format: :json)
end

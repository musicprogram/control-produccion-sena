json.array!(@operaciones) do |operacion|
  json.extract! operacion, :id, :nombre, :sam, :descripcion, :maquina_id, :modulo_id
  json.url operacion_url(operacion, format: :json)
end

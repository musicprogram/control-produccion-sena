json.array!(@operacion_maquinas) do |operacion_maquina|
  json.extract! operacion_maquina, :id, :operacion_id, :maquina_id, :tioperacion_id, :fichatecnica_id, :sam, :calibreaguja, :ppp, :margencostura, :guia_acesorios, :observaciones
  json.url operacion_maquina_url(operacion_maquina, format: :json)
end

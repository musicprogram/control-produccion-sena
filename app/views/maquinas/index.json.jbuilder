json.array!(@maquinas) do |maquina|
  json.extract! maquina, :id, :nombre, :estadom_id, :especificaciones
  json.url maquina_url(maquina, format: :json)
end

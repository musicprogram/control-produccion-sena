json.array!(@omaquinas) do |omaquina|
  json.extract! omaquina, :id, :moperario_id, :maquina_id
  json.url omaquina_url(omaquina, format: :json)
end

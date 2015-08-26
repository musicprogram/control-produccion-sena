json.array!(@moperaciones) do |moperacion|
  json.extract! moperacion, :id, :omaquina_id, :operacion_id
  json.url moperacion_url(moperacion, format: :json)
end

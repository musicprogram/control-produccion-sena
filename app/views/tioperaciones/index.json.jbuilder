json.array!(@tioperaciones) do |tioperacion|
  json.extract! tioperacion, :id, :nombre
  json.url tioperacion_url(tioperacion, format: :json)
end

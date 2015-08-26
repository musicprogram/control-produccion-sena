json.array!(@medidas) do |medida|
  json.extract! medida, :id, :medida
  json.url medida_url(medida, format: :json)
end

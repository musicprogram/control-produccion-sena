json.array!(@insumos) do |insumo|
  json.extract! insumo, :id, :nombre
  json.url insumo_url(insumo, format: :json)
end

json.array!(@tipocostos) do |tipocosto|
  json.extract! tipocosto, :id, :nombre, :descripcion
  json.url tipocosto_url(tipocosto, format: :json)
end

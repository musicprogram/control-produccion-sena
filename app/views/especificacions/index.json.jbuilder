json.array!(@especificacions) do |especificacion|
  json.extract! especificacion, :id, :descripcion
  json.url especificacion_url(especificacion, format: :json)
end

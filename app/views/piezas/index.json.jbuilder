json.array!(@piezas) do |pieza|
  json.extract! pieza, :id, :nombre
  json.url pieza_url(pieza, format: :json)
end

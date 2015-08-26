json.array!(@estadoms) do |estadom|
  json.extract! estadom, :id, :titulo, :descripcion
  json.url estadom_url(estadom, format: :json)
end

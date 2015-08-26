json.array!(@ayudas) do |ayuda|
  json.extract! ayuda, :id, :nombre, :url, :opcional, :descripcion
  json.url ayuda_url(ayuda, format: :json)
end

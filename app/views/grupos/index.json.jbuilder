json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :numero_ficha, :nombre
  json.url grupo_url(grupo, format: :json)
end

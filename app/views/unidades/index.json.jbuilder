json.array!(@unidades) do |unidade|
  json.extract! unidade, :id, :tipo, :descripcion
  json.url unidade_url(unidade, format: :json)
end

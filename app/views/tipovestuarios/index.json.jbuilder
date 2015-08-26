json.array!(@tipovestuarios) do |tipovestuario|
  json.extract! tipovestuario, :id, :nombre, :descripcion
  json.url tipovestuario_url(tipovestuario, format: :json)
end

json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :documento_id, :nombre
  json.url cliente_url(cliente, format: :json)
end

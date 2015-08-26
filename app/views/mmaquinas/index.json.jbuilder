json.array!(@mmaquinas) do |mmaquina|
  json.extract! mmaquina, :id, :pmodulo_id, :maquina_id
  json.url mmaquina_url(mmaquina, format: :json)
end

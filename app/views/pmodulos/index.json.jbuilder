json.array!(@pmodulos) do |pmodulo|
  json.extract! pmodulo, :id, :proyecto_id, :modulo_id
  json.url pmodulo_url(pmodulo, format: :json)
end

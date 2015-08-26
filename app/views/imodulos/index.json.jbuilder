json.array!(@imodulos) do |imodulo|
  json.extract! imodulo, :id, :tinstructor_id, :modulo_id
  json.url imodulo_url(imodulo, format: :json)
end

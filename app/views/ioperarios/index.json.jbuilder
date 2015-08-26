json.array!(@ioperarios) do |ioperario|
  json.extract! ioperario, :id, :tinstructor_id, :operario_id
  json.url ioperario_url(ioperario, format: :json)
end

json.array!(@moperarios) do |moperario|
  json.extract! moperario, :id, :imodulo_id, :operario_id
  json.url moperario_url(moperario, format: :json)
end

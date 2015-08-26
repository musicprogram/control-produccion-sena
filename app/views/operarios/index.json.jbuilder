json.array!(@operarios) do |operario|
  json.extract! operario, :id, :nombre, :documento, :apellido, :email, :grupo_id, :ayuda_id
  json.url operario_url(operario, format: :json)
end

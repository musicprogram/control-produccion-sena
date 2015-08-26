json.array!(@pturnos) do |pturno|
  json.extract! pturno, :id, :proyecto_id, :turno_id
  json.url pturno_url(pturno, format: :json)
end

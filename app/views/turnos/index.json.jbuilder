json.array!(@turnos) do |turno|
  json.extract! turno, :id, :jornada, :hora_inicio, :hora_fin
  json.url turno_url(turno, format: :json)
end

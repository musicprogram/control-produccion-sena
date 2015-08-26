json.array!(@prestaciones) do |prestacion|
  json.extract! prestacion, :id, :cesantias, :cesantias_porcentaje, :prima, :prima_procentaje, :vacaciones, :vacaciones_porcentaje, :intereses_cesantias, :intereses_porcenjate, :total_prestacion, :total_porcentaje, :sueldo_id
  json.url prestacion_url(prestacion, format: :json)
end

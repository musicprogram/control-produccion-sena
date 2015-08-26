json.array!(@sueldos) do |sueldo|
  json.extract! sueldo, :id, :salario, :salario_porcentaje, :subsidio, :subsidio_procentaje, :total_sueldo, :total_porcentaje
  json.url sueldo_url(sueldo, format: :json)
end

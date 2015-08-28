json.array!(@resultado_costos) do |resultado_costo|
  json.extract! resultado_costo, :id, :dlaborales_mes, :costo_dia, :costo_hora, :costo_minuto, :recargo_adicional, :total_minuto, :sueldo_id, :dlaboral_id, :prestacion_id, :costome_id
  json.url resultado_costo_url(resultado_costo, format: :json)
end

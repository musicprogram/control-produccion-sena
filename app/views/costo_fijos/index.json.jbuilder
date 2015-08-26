json.array!(@costo_fijos) do |costo_fijo|
  json.extract! costo_fijo, :id, :arrendamiento, :servicios_publicos, :nomina, :prestaciones, :otros_gastos, :papeleria, :honorarios, :gastos_mercadeo, :impuestos_municipales, :otros, :total_costos
  json.url costo_fijo_url(costo_fijo, format: :json)
end

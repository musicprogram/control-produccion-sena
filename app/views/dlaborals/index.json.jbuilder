json.array!(@dlaborals) do |dlaboral|
  json.extract! dlaboral, :id, :dias_año, :domingos, :festivos, :vacaciones, :total_dias
  json.url dlaboral_url(dlaboral, format: :json)
end

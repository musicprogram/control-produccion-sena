json.array!(@balances) do |balance|
  json.extract! balance, :id, :reference_id, :pedido_prendas, :jornada_laboral, :talk_time, :tiempo_total
  json.url balance_url(balance, format: :json)
end

json.array!(@tipmoneys) do |tipmoney|
  json.extract! tipmoney, :id, :siglas, :descripcion
  json.url tipmoney_url(tipmoney, format: :json)
end

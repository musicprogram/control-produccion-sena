json.array!(@cateayudas) do |cateayuda|
  json.extract! cateayuda, :id, :nombre
  json.url cateayuda_url(cateayuda, format: :json)
end

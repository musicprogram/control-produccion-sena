json.array!(@references) do |reference|
  json.extract! reference, :id, :ref, :nombre, :descripcion
  json.url reference_url(reference, format: :json)
end

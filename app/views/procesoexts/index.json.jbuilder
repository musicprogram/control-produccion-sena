json.array!(@procesoexts) do |procesoext|
  json.extract! procesoext, :id, :nombre
  json.url procesoext_url(procesoext, format: :json)
end

json.array!(@documentos) do |documento|
  json.extract! documento, :id, :siglas, :nombre
  json.url documento_url(documento, format: :json)
end

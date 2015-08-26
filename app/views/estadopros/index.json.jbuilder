json.array!(@estadopros) do |estadopro|
  json.extract! estadopro, :id, :estado
  json.url estadopro_url(estadopro, format: :json)
end

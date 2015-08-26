json.array!(@material_fichatecnicas) do |material_fichatecnica|
  json.extract! material_fichatecnica, :id, :material_id, :fichatecnica_id, :cantidad, :observaciones
  json.url material_fichatecnica_url(material_fichatecnica, format: :json)
end

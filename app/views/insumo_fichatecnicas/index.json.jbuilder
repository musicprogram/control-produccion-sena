json.array!(@insumo_fichatecnicas) do |insumo_fichatecnica|
  json.extract! insumo_fichatecnica, :id, :material_id, :fichatecnica_id, :cantidad, :observaciones
  json.url insumo_fichatecnica_url(insumo_fichatecnica, format: :json)
end

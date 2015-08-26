json.array!(@pieza_fichatecnicas) do |pieza_fichatecnica|
  json.extract! pieza_fichatecnica, :id, :material_id, :fichatecnica_id, :cantidad, :observaciones
  json.url pieza_fichatecnica_url(pieza_fichatecnica, format: :json)
end

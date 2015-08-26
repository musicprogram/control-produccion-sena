json.array!(@costomes) do |costome|
  json.extract! costome, :id, :porcenjatesalud, :salud, :porcentajepension, :pension, :porcentajerprofesional, :rprofesional, :porcentajesena, :sena, :porcentajeicbf, :icbf, :porcentajecajacompensacion, :cajacompensaciontotal, :porcentajetotal_costom, :total_costom, :porcentajetotalneto, :totalneto, :sueldo_id
  json.url costome_url(costome, format: :json)
end

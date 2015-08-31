class ResultadoCosto < ActiveRecord::Base
  belongs_to :sueldo
  belongs_to :dlaboral
  belongs_to :prestacion
  belongs_to :costome
  before_validation :resultado
  
  def resultado 
    
    sueldo = Sueldo.first
    dlaboral = Dlaboral.first
    prestacion = Prestacion.first
    costome = Costome.first
    
    self.dlaborales_mes = dlaboral.total_dias / 12
    self.costo_dia = dlaborales_mes /  prestacion.total_prestacion
    self.costo_hora = costo_dia / hlaborales
    self.costo_minuto = costo_hora / 60
    self.total_minuto = costo_minuto / recargo_adicional

 end 
end

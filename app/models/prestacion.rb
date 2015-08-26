class Prestacion < ActiveRecord::Base
    
    belongs_to :sueldo
    
    
    before_validation :sumar_costosmes
  
    def sumar_costosmes
      
       sueldo = Sueldo.first
       
     
       self.cesantias = sueldo.total_sueldo * cesantias_porcentaje
       self.prima = sueldo.total_sueldo * prima_procentaje
       self.vacaciones = sueldo.total_sueldo * vacaciones_porcentaje
       self.intereses_cesantias = sueldo.total_sueldo * intereses_porcenjate
       
       
       self.total_porcentaje = cesantias_porcentaje + prima_procentaje + vacaciones_porcentaje + intereses_porcenjate
       
       self.total_prestacion = cesantias + prima + vacaciones + intereses_cesantias
       
    end
     
    
    
end

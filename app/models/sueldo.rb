class Sueldo < ActiveRecord::Base
    
    validate :validar, :on => :create 
    before_validation :sumar_sueldos
    
    def sumar_sueldos
        
        self.total_sueldo = self.salario + self.subsidio 
        self.total_porcentaje = self.salario_porcentaje + self.subsidio_procentaje
    end
   
   
    def validar
        if self.salario  == nil
           errors.add(:total_costos,'Valores incorrectos')
        end
        if self.salario_porcentaje == nil
           errors.add(:total_costos,'Valores incorrectos')
        end 
    end
    
end

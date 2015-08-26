class CostoFijo < ActiveRecord::Base
    validate :validar, :on => :create 
    before_create :sumar_costos
    
    
    def sumar_costos
        
        self.total_costos = self.arrendamiento + self.servicios_publicos + self.nomina + self.prestaciones + self.otros_gastos + self.papeleria + self.honorarios + self.gastos_mercadeo + self.impuestos_municipales + self.otros  
    end
    
    def validar
        if self.total_costos == 0 
           errors.add(:total_costos,'Valores incorrectos')
        end    
    end
    
    
end

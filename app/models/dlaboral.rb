class Dlaboral < ActiveRecord::Base
    
    validates :dias_año, presence: true
    #validate :validar, :on => :create
    before_validation :suma_dias
 
=begin    
    def validar
        
        if self.dias_año == nil
            errors.add(:dias_año, 'Valores Incorrectos')
        end   
        
    end 
    
=end    
    
    def suma_dias
        
        if  self.domingos == nil 
            self.domingos = 0
        end
        
        if self.festivos == nil
            self.festivos = 0
        end
        
        if self.vacaciones == nil
            self.vacaciones = 0
        end    
        
        self.total_dias = self.dias_año - self.domingos - self.festivos - self.vacaciones 
       
    end
  
    
end

class Costome < ActiveRecord::Base
  belongs_to :prestacion
  belongs_to :sueldo
  before_create :validar
  before_validation :sumar_costosmes
  
  def sumar_costosmes
      
       sueldo = Sueldo.first
       prestacion = Prestacion.first
     
       self.salud = sueldo.salario * porcenjatesalud
       self.pension = sueldo.salario * porcentajepension
       self.rprofesional = sueldo.salario * porcentajerprofesional
       self.sena = sueldo.salario * porcentajesena
       self.icbf = sueldo.salario * porcentajeicbf
       self.cajacompensaciontotal = sueldo.salario * porcentajecajacompensacion
       self.total_costom = salud + pension + rprofesional + sena + icbf + cajacompensaciontotal
       self.porcentajetotal_costom = porcenjatesalud + porcentajepension + porcentajerprofesional + porcentajesena + porcentajeicbf + porcentajecajacompensacion
       self.porcentajetotalneto = sueldo.total_sueldo + prestacion.total_prestacion + porcentajetotal_costom      
       self.totalneto = sueldo.salario * porcentajetotalneto
   end
     def validar  
        if self.totalneto == 0 
           errors.add(:totalneto,'Valores incorrectos')
        end    
     end
end

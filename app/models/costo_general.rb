class CostoGeneral < ActiveRecord::Base
    before_validation :calcular
    
    def calcular 
        #Sueldos
            self.total_sueldo = salario + subsidio
            self.total_porcentaje = salario_porcentaje + subsidio_procentaje
        #Costos Prestaciones(FALTA)
        #Costos por Mes
            self.salud = salario * porcenjatesalud
            self.pension = salario * porcentajepension
            self.rprofesional = salario * porcentajerprofesional
            self.sena = salario * porcentajesena
            self.icbf = salario * porcentajeicbf
            self.cajacompensaciontotal = salario * porcentajecajacompensacion
            self.total_costom = salud + pension + rprofesional + sena + icbf + cajacompensaciontotal
            self.porcentajetotal_costom = porcenjatesalud + porcentajepension + porcentajerprofesional + porcentajesena + porcentajeicbf + porcentajecajacompensacion
            self.porcentajetotalneto = porcentajetotal_costom + .. + total_porcentaje
    end 
end

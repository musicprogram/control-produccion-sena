class CostoGeneral < ActiveRecord::Base
    before_validation :calcular
    before_validation :calcular2
    before_validation :calcular3
    before_validation :calcular4
    before_validation :calcular5
    
    def calcular 
        #Sueldos
            if salario == nil
               self.salario = 0
            end
            if subsidio == nil
               self.subsidio = 0
            end
            if salario_porcentaje == nil
               self.salario_porcentaje = 0
            end
            if subsidio_procentaje == nil
               self.subsidio_procentaje = 0
            end
            
            self.total_sueldo = salario + subsidio
            self.total_porcentaje = salario_porcentaje + subsidio_procentaje
           
    end 
   
    def calcular2
         #Costos Prestaciones
            if total_sueldo == nil
               self.total_sueldo = 0
            end
            if cesantias_porcentaje == nil
               self.cesantias_porcentaje = 0
            end
            if prima_procentaje == nil
               self.prima_procentaje = 0
            end
            if vacaciones_porcentaje == nil
               self.vacaciones_porcentaje = 0
            end
            if interes_porcentaje == nil
               self.interes_porcentaje = 0
            end
            
            self.cesantias = total_sueldo * cesantias_porcentaje
            self.prima = total_sueldo * prima_procentaje
            self.vacaciones = total_sueldo * vacaciones_porcentaje
            self.intereses_cesantias = total_sueldo * interes_porcentaje
            self.total_porcentaje_pres = cesantias_porcentaje + prima_procentaje + vacaciones_porcentaje + interes_porcentaje 
            self.total_prestacion = cesantias + prima + vacaciones + intereses_cesantias
    end
    
    def calcular3
        #Costos por Mes
            if salario == nil 
                self.salario = 0
            end 
            if porcenjatesalud == nil 
                self.porcenjatesalud = 0
            end 
            if porcentajepension == nil 
                self.porcentajepension = 0
            end 
            if porcentajerprofesional == nil 
                self.porcentajerprofesional = 0
            end
            if porcentajesena == nil 
                self.porcentajesena = 0
            end 
            if porcentajeicbf == nil 
                self.porcentajeicbf = 0
            end
            if porcentajecajacompensacion == nil 
                self.porcentajecajacompensacion = 0
            end 
            self.salud = salario * porcenjatesalud
            self.pension = salario * porcentajepension
            self.rprofesional = salario * porcentajerprofesional
            self.sena = salario * porcentajesena
            self.icbf = salario * porcentajeicbf
            self.cajacompensaciontotal = salario * porcentajecajacompensacion
            self.total_costom = salud + pension + rprofesional + sena + icbf + cajacompensaciontotal
            self.porcentajetotal_costom = porcenjatesalud + porcentajepension + porcentajerprofesional + porcentajesena + porcentajeicbf + porcentajecajacompensacion
            self.porcentajetotalneto = porcentajetotal_costom + total_porcentaje_pres + total_porcentaje
            self.totalneto = total_costom + total_prestacion + total_sueldo
    end         
    
    def calcular4
        #Dias Realmente Laborados 
            if dias_año == nil 
                self.dias_año = 0
            end 
            if domingos == nil 
                self.domingos = 0
            end 
            if festivos == nil 
                self.festivos = 0
            end 
            if vacaciones_trabajador == nil
                self.vacaciones_trabajador = 0
            end 
            self.total_dias = dias_año - domingos - festivos - vacaciones_trabajador
    end
    
    def calcular5
        if total_dias == nil 
            self.total_dias = 0
        end 
        if recargo_adicional == nil 
            recargo_adicional = 0
        end 
        self.dlaborales_mes = total_dias / 12
        self.costo_dia = totalneto / dlaborales_mes
        self.costo_hora = dlaborales_mes / hlaborales
        self.costo_minuto = costo_hora / 60
        self.total_minuto = costo_minuto + recargo_adicional
    end
end

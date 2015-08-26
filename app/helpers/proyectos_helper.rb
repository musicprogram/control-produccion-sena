module ProyectosHelper
    
    def mostrarTurno(turno_id)
       turno = Turno.find_by id: turno_id
       return turno.jornada
    end
    
    def mostrarInstructor(instructor_id)
       instructor = Instructor.find_by id: instructor_id
       return instructor.nombre
    end
    
    def mostrarModulo(modulo_id)
       modulo = Modulo.find_by id: modulo_id
       return modulo.nombre
    end
    
    def mostrarOperario(operario_id)
       operario = Operario.find_by id: operario_id
       return operario.nombre
    end
    
    def mostrarMaquina(maquina_id)
       maquina = Maquina.find_by id: maquina_id
       return maquina.nombre
    end
    
    def mostrarOperacion(operacion_id)
       operacion = Operacion.find_by id: operacion_id
       return operacion.nombre
    end
end



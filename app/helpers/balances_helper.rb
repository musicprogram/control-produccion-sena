module BalancesHelper
    def mostrar_balance(balance, talk)
        array = Array.new
        aux = ""
       balance.each do |b|
           if aux != b.operario
               hash = Hash.new
               hash[:operario] = b.operario.to_s
               hash[:operacion] = buscarOperacion(b.operacion)
               hash[:maquina] = buscarMaquina(b.maquina)
               hash[:sam] = b.sam.to_s
               hash[:samA] = b.sam
               balance.each do |b2|
                   if b.operario == b2.operario && b.operacion != b2.operacion
                       hash[:operacion] += ", " + buscarOperacion(b2.operacion)
                       hash[:maquina] += ", " + buscarMaquina(b2.maquina)
                       hash[:sam] += ", " + b2.sam.to_s
                       hash[:samA] += b2.sam
                       aux = b2.operario
                   end
               end
               hash[:sobrante] = talk - hash[:samA]
               array << hash
           end
       end
       return array
    end
    
    def sum(balance)
        tiempoTotal = 0
        balance.each do |f|
            tiempoTotal += f[:sobrante]
        end
        return tiempoTotal
    end
    
    def buscarOperacion(id)
        operacionNombre = Operacion.find(id)
        return operacionNombre.nombre
    end
    
    def buscarMaquina(id)
        maquinaNombre = Maquina.find(id)
        return maquinaNombre.nombre
    end
end

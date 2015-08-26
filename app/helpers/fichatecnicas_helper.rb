module FichatecnicasHelper
    def mostrar(a)
        b = Array.new
        a.each do | x |
            y = Talla.find_by id: x
            b << y.titulo
        end
        
        return b.join(", ")
    end
    
    def mostrar1(a)
        b = Array.new
        a.each do | x |
            y = Tela.find_by id: x
            b << y.nombre
        end
        
        return b.join(", ")
    end
    
    def mostrar2(a)
        b = Array.new
        a.each do | x |
            y = Color.find_by id: x
            b << y.nombre
        end
        
        return b.join(", ")
    end
    
    def mostrar3(a)
        b = Array.new
        a.each do | x |
            y = Especificacion.find_by id: x
            b << y.descripcion
        end
        
        return b.join(", ")
    end
    
    def mostrar4(a)
        b = Array.new
        a.each do | x |
            y = Estandar.find_by id: x
            b << y.descripcion
        end
        
        return b.join(", ")
    end
    
    def mostrar5(a)
        b = Array.new
        a.each do | x |
            y = Procesoext.find_by id: x
            b << y.nombre
        end
        
        return b.join(", ")
    end
    
     def mostrar6(a)
        b = Array.new
        a.each do | x |
            y = Pieza.find_by id: x
            b << y.nombre
        end
        
        return b.join(", ")
    end
end

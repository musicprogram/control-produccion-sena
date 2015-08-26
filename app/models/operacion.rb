class Operacion < ActiveRecord::Base
    has_and_belongs_to_many :maquinas
    belongs_to :modulo 
    has_many :ayuda
end

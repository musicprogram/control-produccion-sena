class Modulo < ActiveRecord::Base
    has_many :operaciones
    has_many :ayudas
    has_many :fichatecnicas
    has_many :maquinas
    has_many :instructors
    belongs_to :tipovestuario
    has_many :imodulos
    
end

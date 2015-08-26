class Estadom < ActiveRecord::Base
    belongs_to :ayuda
    has_many :maquinas
end

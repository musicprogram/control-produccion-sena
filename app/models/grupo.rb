class Grupo < ActiveRecord::Base
    has_many :operarios
    has_many :ayuda
end

class Documento < ActiveRecord::Base
    belongs_to :ayuda
    has_many :operarios
    has_many :instructors
end

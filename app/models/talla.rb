class Talla < ActiveRecord::Base
    has_many :ayudas
    has_and_belongs_to_many :fichatecnicas
    has_and_belongs_to_many :medidas
    belongs_to :medida_talla
end

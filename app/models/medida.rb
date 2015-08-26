class Medida < ActiveRecord::Base
    belongs_to :medida_talla
    has_and_belongs_to_many :tallas
end

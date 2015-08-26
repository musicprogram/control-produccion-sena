class Unidade < ActiveRecord::Base
    has_many :material_fichatecnicas
    has_many :insumo_fichatecnicas
end

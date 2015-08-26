class MedidaTalla < ActiveRecord::Base
  belongs_to :medida
  belongs_to :fichatecnica
  belongs_to :talla
end
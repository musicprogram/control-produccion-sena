class InsumoFichatecnica < ActiveRecord::Base
  belongs_to :insumo
  belongs_to :fichatecnica
  belongs_to :unidade
end

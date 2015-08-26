class PiezaFichatecnica < ActiveRecord::Base
  belongs_to :pieza
  belongs_to :fichatecnica
end

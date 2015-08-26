class EspecificacionsFichatecnica < ActiveRecord::Base
  belongs_to :fichatecnica
  belongs_to :especificacion
end

class MaterialFichatecnica < ActiveRecord::Base
  belongs_to :material
  belongs_to :fichatecnica
  belongs_to :unidade
end

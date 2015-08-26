class Operario < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :ayuda
  belongs_to :documento
  has_many :moperaciones
end

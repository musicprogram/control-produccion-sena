class Omaquina < ActiveRecord::Base
  belongs_to :moperario
  belongs_to :maquina
  has_many :moperaciones
  accepts_nested_attributes_for :moperaciones, reject_if: :all_blank, allow_destroy: true
end

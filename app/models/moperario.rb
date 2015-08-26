class Moperario < ActiveRecord::Base
  belongs_to :imodulo
  belongs_to :operario
  has_many :omaquinas
  accepts_nested_attributes_for :omaquinas, reject_if: :all_blank, allow_destroy: true
end

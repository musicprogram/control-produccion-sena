class Pmodulo < ActiveRecord::Base
  belongs_to :proyecto
  belongs_to :modulo
  has_many :mmaquinas
  accepts_nested_attributes_for :mmaquinas, reject_if: :all_blank, allow_destroy: true
end

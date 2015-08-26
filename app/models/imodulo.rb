class Imodulo < ActiveRecord::Base
  belongs_to :tinstructor
  belongs_to :modulo
  has_many :moperarios
  accepts_nested_attributes_for :moperarios, reject_if: :all_blank, allow_destroy: true
end

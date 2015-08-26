class Tinstructor < ActiveRecord::Base
  belongs_to :pturno
  belongs_to :instructor
  has_many :imodulos
  accepts_nested_attributes_for :imodulos, reject_if: :all_blank, allow_destroy: true
end

class Pturno < ActiveRecord::Base
  
  belongs_to :proyecto
  belongs_to :turno
  has_many :tinstructors 
  accepts_nested_attributes_for :tinstructors, reject_if: :all_blank, allow_destroy: true
  
end

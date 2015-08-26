class Instructor < ActiveRecord::Base
  belongs_to :documento
  belongs_to :modulo
  has_many :tinstructors
end

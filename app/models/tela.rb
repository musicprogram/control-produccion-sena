class Tela < ActiveRecord::Base
  has_and_belongs_to_many :fichatecnicas
  has_many :ayudas
end

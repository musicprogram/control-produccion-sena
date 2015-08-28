class ResultadoCosto < ActiveRecord::Base
  belongs_to :sueldo
  belongs_to :dlaboral
  belongs_to :prestacion
  belongs_to :costome
end

class Maquina < ActiveRecord::Base
  belongs_to :estadom
  has_and_belongs_to_many :operaciones
  has_many :ayudas
  belongs_to :modulo
  belongs_to :maquina
  has_many :omaquinas
  
  attr_accessor :especificaciones_file_maquina
  has_attached_file :especificaciones, :default_url =>"maquinas"
  do_not_validate_attachment_file_type :especificaciones
end

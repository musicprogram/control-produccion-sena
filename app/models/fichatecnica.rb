class Fichatecnica < ActiveRecord::Base
  belongs_to :modulo
  has_and_belongs_to_many :tallas
  has_and_belongs_to_many :telas
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :especificacions
  has_and_belongs_to_many :estandars
  has_and_belongs_to_many :procesoexts
  has_and_belongs_to_many :piezas
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :insumos
  belongs_to :reference
  has_many :medida_tallas
  has_many :proveedor_procesoexts
  has_many :material_fichatecnicas
  has_many :pieza_fichatecnicas
  has_many :insumo_fichatecnicas
  has_many :operacion_maquinas
  
 has_attached_file :muestra
 do_not_validate_attachment_file_type :muestra
 
end

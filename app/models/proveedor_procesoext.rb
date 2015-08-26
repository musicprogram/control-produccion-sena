class ProveedorProcesoext < ActiveRecord::Base
  belongs_to :proveedor
  belongs_to :procesoext
  belongs_to :fichatecnica
end

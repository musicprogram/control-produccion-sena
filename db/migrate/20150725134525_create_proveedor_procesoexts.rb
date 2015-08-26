class CreateProveedorProcesoexts < ActiveRecord::Migration
  def change
    create_table :proveedor_procesoexts do |t|
      t.references :proveedor, index: true, foreign_key: true
      t.references :procesoext, index: true, foreign_key: true
      t.references :fichatecnica, index: true, foreign_key: true
      t.text :descripcion
      t.text :observaciones
      t.string :precio

      t.timestamps null: false
    end
  end
end

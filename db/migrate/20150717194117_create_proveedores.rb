class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.integer :nit
      t.string :nombre
      t.string :telefono

      t.timestamps null: false
    end
  end
end

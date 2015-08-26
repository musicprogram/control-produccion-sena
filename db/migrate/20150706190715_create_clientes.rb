class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.references :documento, index: true, foreign_key: true
      t.string :numero_documento
      t.string :nombre
      t.string :correo
      t.string :telefono

      t.timestamps null: false
    end
  end
end

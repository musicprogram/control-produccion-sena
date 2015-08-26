class CreateTipovestuarios < ActiveRecord::Migration
  def change
    create_table :tipovestuarios do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

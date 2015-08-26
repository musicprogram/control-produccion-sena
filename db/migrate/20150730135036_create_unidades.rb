class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :tipo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

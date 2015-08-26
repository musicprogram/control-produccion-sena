class CreateEstandars < ActiveRecord::Migration
  def change
    create_table :estandars do |t|
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

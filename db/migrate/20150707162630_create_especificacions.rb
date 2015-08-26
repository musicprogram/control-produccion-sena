class CreateEspecificacions < ActiveRecord::Migration
  def change
    create_table :especificacions do |t|
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

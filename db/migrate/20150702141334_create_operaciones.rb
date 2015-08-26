class CreateOperaciones < ActiveRecord::Migration
  def change
    create_table :operaciones do |t|
      t.string :nombre
      t.text :descripcion
      
      t.timestamps null: false
    end
  end
end

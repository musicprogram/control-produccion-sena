class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :numero_ficha
      t.string :nombre

      t.timestamps null: false
    end
  end
end

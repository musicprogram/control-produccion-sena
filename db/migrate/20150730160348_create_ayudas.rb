class CreateAyudas < ActiveRecord::Migration
  def change
    create_table :ayudas do |t|
      t.string :nombre
      t.string :url
      t.string :opcional
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

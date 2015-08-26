class CreateTallas < ActiveRecord::Migration
  def change
    create_table :tallas do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

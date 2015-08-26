class CreateEstadoms < ActiveRecord::Migration
  def change
    create_table :estadoms do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

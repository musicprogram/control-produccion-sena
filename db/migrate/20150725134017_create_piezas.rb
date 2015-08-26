class CreatePiezas < ActiveRecord::Migration
  def change
    create_table :piezas do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

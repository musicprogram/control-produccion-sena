class CreateTipmoneys < ActiveRecord::Migration
  def change
    create_table :tipmoneys do |t|
      t.string :siglas
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

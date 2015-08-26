class CreateMedidaTallas < ActiveRecord::Migration
  def change
    create_table :medida_tallas do |t|
      t.references :medida, index: true, foreign_key: true
      t.references :talla, index: true, foreign_key: true
      t.references :fichatecnica, index: true, foreign_key: true
      t.string :centimetros
      t.string :tolerancia

      t.timestamps null: false
    end
  end
end

class CreateTipocostos < ActiveRecord::Migration
  def change
    create_table :tipocostos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

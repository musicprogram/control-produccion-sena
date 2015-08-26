class CreateInsumos < ActiveRecord::Migration
  def change
    create_table :insumos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

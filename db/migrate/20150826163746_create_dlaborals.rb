class CreateDlaborals < ActiveRecord::Migration
  def change
    create_table :dlaborals do |t|
      t.integer :dias_año
      t.integer :domingos
      t.integer :festivos
      t.integer :vacaciones
      t.integer :total_dias

      t.timestamps null: false
    end
  end
end

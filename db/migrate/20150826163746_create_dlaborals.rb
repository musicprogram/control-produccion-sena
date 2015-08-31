class CreateDlaborals < ActiveRecord::Migration
  def change
    create_table :dlaborals do |t|
      t.float :dias_año
      t.float :domingos
      t.float :festivos
      t.float :vacaciones
      t.float :total_dias

      t.timestamps null: false
    end
  end
end

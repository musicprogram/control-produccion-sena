class CreateSueldos < ActiveRecord::Migration
  def change
    create_table :sueldos do |t|
      t.integer :salario
      t.integer :salario_porcentaje
      t.integer :subsidio
      t.integer :subsidio_procentaje
      t.integer :total_sueldo
      t.integer :total_porcentaje

      t.timestamps null: false
    end
  end
end

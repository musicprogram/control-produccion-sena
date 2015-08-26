class CreateSueldos < ActiveRecord::Migration
  def change
    create_table :sueldos do |t|
      t.float :salario
      t.float :salario_porcentaje
      t.float :subsidio
      t.float :subsidio_procentaje
      t.float :total_sueldo
      t.float :total_porcentaje

      t.timestamps null: false
    end
  end
end

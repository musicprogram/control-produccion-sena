class CreatePrestaciones < ActiveRecord::Migration
  def change
    create_table :prestaciones do |t|
      t.float :cesantias
      t.float :cesantias_porcentaje
      t.float :prima
      t.float :prima_procentaje
      t.float :vacaciones
      t.float :vacaciones_porcentaje
      t.float :intereses_cesantias
      t.float :intereses_porcenjate
      t.float :total_prestacion
      t.float :total_porcentaje
      t.belongs_to :sueldo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

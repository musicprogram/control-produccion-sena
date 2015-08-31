class CreatePrestaciones < ActiveRecord::Migration
  def change
    create_table :prestaciones do |t|
      t.integer :cesantias
      t.integer :cesantias_porcentaje
      t.integer :prima
      t.integer :prima_procentaje
      t.integer :vacaciones
      t.integer :vacaciones_porcentaje
      t.integer :intereses_cesantias
      t.integer :intereses_porcenjate
      t.integer :total_prestacion
      t.integer :total_porcentaje
      t.belongs_to :sueldo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

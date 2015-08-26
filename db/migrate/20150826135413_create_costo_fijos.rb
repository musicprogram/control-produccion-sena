class CreateCostoFijos < ActiveRecord::Migration
  def change
    create_table :costo_fijos do |t|
      t.float :arrendamiento
      t.float :servicios_publicos
      t.float :nomina
      t.float :prestaciones
      t.float :otros_gastos
      t.float :papeleria
      t.float :honorarios
      t.float :gastos_mercadeo
      t.float :impuestos_municipales
      t.float :otros
      t.float :total_costos

      t.timestamps null: false
    end
  end
end

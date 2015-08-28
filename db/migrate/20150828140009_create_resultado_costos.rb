class CreateResultadoCostos < ActiveRecord::Migration
  def change
    create_table :resultado_costos do |t|
      t.float :dlaborales_mes
      t.float :costo_dia
      t.float :costo_hora
      t.float :costo_minuto
      t.float :recargo_adicional
      t.float :total_minuto
      t.belongs_to :sueldo, index: true, foreign_key: true
      t.belongs_to :dlaboral, index: true, foreign_key: true
      t.belongs_to :prestacion, index: true, foreign_key: true
      t.belongs_to :costome, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

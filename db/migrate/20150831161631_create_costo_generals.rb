class CreateCostoGenerals < ActiveRecord::Migration
  def change
    create_table :costo_generals do |t|
      t.float :salario
      t.float :salario_porcentaje
      t.float :subsidio
      t.float :subsidio_procentaje
      t.float :total_sueldo
      t.float :total_porcentaje
      t.float :cesantias
      t.float :cesantias_porcentaje
      t.float :prima
      t.float :prima_procentaje
      t.float :vacaciones
      t.float :vacaciones_porcentaje
      t.float :intereses_cesantias
      t.float :total_prestacion
      t.float :total_porcentaje
      t.float :porcenjatesalud
      t.float :salud
      t.float :porcentajepension
      t.float :pension
      t.float :porcentajerprofesional
      t.float :rprofesional
      t.float :porcentajesena
      t.float :sena
      t.float :porcentajeicbf
      t.float :icbf
      t.float :porcentajecajacompensacion
      t.float :cajacompensaciontotal
      t.float :porcentajetotal_costom
      t.float :total_costom
      t.float :porcentajetotalneto
      t.float :totalneto
      t.float :dias_año
      t.float :domingos
      t.float :festivos
      t.float :vacaciones
      t.float :total_dias
      t.float :dlaborales_mes
      t.float :costo_dia
      t.integer :hlaborales
      t.float :costo_hora
      t.float :costo_minuto
      t.float :recargo_adicional
      t.float :total_minuto

      t.timestamps null: false
    end
  end
end

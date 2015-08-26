class CreateCostomes < ActiveRecord::Migration
  def change
    create_table :costomes do |t|
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
      t.belongs_to :sueldo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

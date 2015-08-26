class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :jornada
      t.datetime :hora_inicio
      t.datetime :hora_fin

      t.timestamps null: false
    end
  end
end

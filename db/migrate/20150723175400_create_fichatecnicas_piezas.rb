class CreateFichatecnicasPiezas < ActiveRecord::Migration
  def change
    create_table :fichatecnicas_piezas do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :pieza, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

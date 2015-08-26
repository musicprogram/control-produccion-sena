class CreatePiezaFichatecnicas < ActiveRecord::Migration
  def change
    create_table :pieza_fichatecnicas do |t|
      t.references :pieza, index: true, foreign_key: true
      t.references :fichatecnica, index: true, foreign_key: true
      t.string :cantidad
      t.string :observaciones

      t.timestamps null: false
    end
  end
end

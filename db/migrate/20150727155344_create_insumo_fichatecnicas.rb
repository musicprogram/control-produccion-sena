class CreateInsumoFichatecnicas < ActiveRecord::Migration
  def change
    create_table :insumo_fichatecnicas do |t|
      t.references :insumo, index: true, foreign_key: true
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :unidades, index: true, foreign_key: true
      t.string :cantidad
      t.string :observaciones

      t.timestamps null: false
    end
  end
end

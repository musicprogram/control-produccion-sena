class CreateFichatecnicasTallas < ActiveRecord::Migration
  def change
    create_table :fichatecnicas_tallas do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :talla, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

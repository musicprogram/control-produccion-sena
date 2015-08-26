class CreateFichatecnicasTelas < ActiveRecord::Migration
  def change
    create_table :fichatecnicas_telas do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :tela, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateFichatecnicasProcesoexts < ActiveRecord::Migration
  def change
    create_table :fichatecnicas_procesoexts do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :procesoext, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateFichatecnicasModulos < ActiveRecord::Migration
  def change
    create_table :fichatecnicas_modulos do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :modulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateEstandarsFichatecnicas < ActiveRecord::Migration
  def change
    create_table :estandars_fichatecnicas do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :estandar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

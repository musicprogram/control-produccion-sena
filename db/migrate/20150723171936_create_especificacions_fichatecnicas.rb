class CreateEspecificacionsFichatecnicas < ActiveRecord::Migration
  def change
    create_table :especificacions_fichatecnicas do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :especificacion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

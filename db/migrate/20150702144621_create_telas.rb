class CreateTelas < ActiveRecord::Migration
  def change
    create_table :telas do |t|
     t.integer :ref
      t.string :nombre
      t.text :descripcion
      t.text :observaciones
      t.references :ayuda, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

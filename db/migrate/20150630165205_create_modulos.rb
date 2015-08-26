class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :nombre
      t.string :descripcion
      t.references :tipovestuario,  index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateMaquinas < ActiveRecord::Migration
  def change
    create_table :maquinas do |t|
      t.integer :serial
      t.string :nombre
      t.references :estadom, index: true, foreign_key: true
      t.references :modulo,  index: true, foreign_key: true
      t.string :especificaciones

      t.timestamps null: false
    end
  end
end

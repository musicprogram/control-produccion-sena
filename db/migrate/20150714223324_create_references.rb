class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :ref
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

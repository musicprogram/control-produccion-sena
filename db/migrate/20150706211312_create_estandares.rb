class CreateEstandares < ActiveRecord::Migration
  def change
    create_table :estandares do |t|
      t.text :descripcion
      t.references :ayuda, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

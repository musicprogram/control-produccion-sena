class CreatePturnos < ActiveRecord::Migration
  def change
    create_table :pturnos do |t|
      t.references :proyecto, index: true, foreign_key: true
      t.references :turno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

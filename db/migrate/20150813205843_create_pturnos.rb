class CreatePturnos < ActiveRecord::Migration
  def change
    create_table :pturnos do |t|
      t.belongs_to :proyecto, index: true, foreign_key: true
      t.belongs_to :turno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

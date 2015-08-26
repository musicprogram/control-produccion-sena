class CreatePmodulos < ActiveRecord::Migration
  def change
    create_table :pmodulos do |t|
      t.belongs_to :proyecto, index: true, foreign_key: true
      t.belongs_to :modulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

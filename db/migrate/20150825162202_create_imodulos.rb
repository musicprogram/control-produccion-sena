class CreateImodulos < ActiveRecord::Migration
  def change
    create_table :imodulos do |t|
      t.references :tinstructor, index: true, foreign_key: true
      t.references :modulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

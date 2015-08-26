class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.references :documento, index: true, foreign_key: true
      t.string :numdocumento
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.references :modulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

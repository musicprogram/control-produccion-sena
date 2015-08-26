class CreateTinstructors < ActiveRecord::Migration
  def change
    create_table :tinstructors do |t|
      t.references :pturno, index: true, foreign_key: true
      t.references :instructor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

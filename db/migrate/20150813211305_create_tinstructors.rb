class CreateTinstructors < ActiveRecord::Migration
  def change
    create_table :tinstructors do |t|
      t.belongs_to :pturno, index: true, foreign_key: true
      t.belongs_to :instructore, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

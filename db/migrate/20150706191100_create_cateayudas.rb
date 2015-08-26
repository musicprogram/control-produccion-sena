class CreateCateayudas < ActiveRecord::Migration
  def change
    create_table :cateayudas do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

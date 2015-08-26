class CreateTioperaciones < ActiveRecord::Migration
  def change
    create_table :tioperaciones do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

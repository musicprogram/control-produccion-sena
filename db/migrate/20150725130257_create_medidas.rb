class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.string :medida

      t.timestamps null: false
    end
  end
end

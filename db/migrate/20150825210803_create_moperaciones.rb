class CreateMoperaciones < ActiveRecord::Migration
  def change
    create_table :moperaciones do |t|
      t.references :omaquina, index: true, foreign_key: true
      t.references :operacion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

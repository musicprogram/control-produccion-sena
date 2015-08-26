class CreateResultbalances < ActiveRecord::Migration
  def change
    create_table :resultbalances do |t|
      t.references :balance, index: true, foreign_key: true
      t.integer :operario
      t.integer :operacion
      t.integer :maquina
      t.float :sam

      t.timestamps null: false
    end
  end
end

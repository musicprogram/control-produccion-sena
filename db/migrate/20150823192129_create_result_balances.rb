class CreateResultBalances < ActiveRecord::Migration
  def change
    create_table :result_balances do |t|
      t.references :balance, index: true, foreign_key: true
      t.integer :operario
      t.string :operacion
      t.string :maquina
      t.float :sam

      t.timestamps null: false
    end
  end
end

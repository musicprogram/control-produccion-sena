class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.references :reference, index: true, foreign_key: true
      t.float :pedido_prendas
      t.float :jornada_laboral
      t.float :talk_time
      t.float :tiempo_total

      t.timestamps null: false
    end
  end
end

class CreateOmaquinas < ActiveRecord::Migration
  def change
    create_table :omaquinas do |t|
      t.references :moperario, index: true, foreign_key: true
      t.references :maquina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

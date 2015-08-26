class CreateMmaquinas < ActiveRecord::Migration
  def change
    create_table :mmaquinas do |t|
      t.belongs_to :pmodulo, index: true, foreign_key: true
      t.belongs_to :maquina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

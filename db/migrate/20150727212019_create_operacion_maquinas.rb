class CreateOperacionMaquinas < ActiveRecord::Migration
  def change
    create_table :operacion_maquinas do |t|
      t.references :operacion, index: true, foreign_key: true
      t.references :maquina, index: true, foreign_key: true
      t.references :tioperacion, index: true, foreign_key: true
      t.references :fichatecnica, index: true, foreign_key: true
      t.integer :sam
      t.string :calibreaguja
      t.string :ppp
      t.string :margencostura
      t.string :guia_acesorios
      t.text :observaciones
      t.integer :num
      t.string :hilo

      t.timestamps null: false
    end
  end
end

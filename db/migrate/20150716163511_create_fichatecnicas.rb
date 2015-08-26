class CreateFichatecnicas < ActiveRecord::Migration
  def change
    create_table :fichatecnicas do |t|
      t.text :descripcion
      t.string :tallapromedio
      t.references :modulo, index: true, foreign_key: true
      t.references :talla, index: true, foreign_key: true
      t.references :tela, index: true, foreign_key: true
      t.references :color, index: true, foreign_key: true
      t.references :especificacion, index: true, foreign_key: true
      t.references :estandar, index: true, foreign_key: true
      t.references :pieza, index: true, foreign_key: true
      t.references :reference, index: true, foreign_key: true
      t.references :medidaprendas, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

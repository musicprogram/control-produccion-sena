class CreateOperarios < ActiveRecord::Migration
  def change
    create_table :operarios do |t|
      t.string :nombre
      t.string :numdocumento
      t.string :apellido
      t.string :email
      t.references :grupo, index: true, foreign_key: true
      t.references :ayuda, index: true, foreign_key: true
      t.references :documento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

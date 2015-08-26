class CreateColorsFichatecnicas < ActiveRecord::Migration
  def change
    create_table :colors_fichatecnicas do |t|
      t.references :fichatecnica, index: true, foreign_key: true
      t.references :color, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

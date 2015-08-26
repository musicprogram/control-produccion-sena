class CreateMoperarios < ActiveRecord::Migration
  def change
    create_table :moperarios do |t|
      t.references :imodulo, index: true, foreign_key: true
      t.references :operario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

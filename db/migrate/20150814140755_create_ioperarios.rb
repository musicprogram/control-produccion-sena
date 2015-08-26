class CreateIoperarios < ActiveRecord::Migration
  def change
    create_table :ioperarios do |t|
      t.belongs_to :tinstructor, index: true, foreign_key: true
      t.belongs_to :operario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

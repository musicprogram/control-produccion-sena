class CreateEstadopros < ActiveRecord::Migration
  def change
    create_table :estadopros do |t|
      t.string :estado

      t.timestamps null: false
    end
  end
end

class CreateProcesoexts < ActiveRecord::Migration
  def change
    create_table :procesoexts do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.string :siglas
      t.string :nombre

      t.timestamps null: false
    end
  end
end

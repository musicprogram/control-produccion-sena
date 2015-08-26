class AddAttachmentImagenToAyuda < ActiveRecord::Migration
   def self.up
    change_table :ayudas do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :ayudas, :imagen
  end
end

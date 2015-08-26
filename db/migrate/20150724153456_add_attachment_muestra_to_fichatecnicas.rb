class AddAttachmentMuestraToFichatecnicas < ActiveRecord::Migration
  def self.up
    change_table :fichatecnicas do |t|
      t.attachment :muestra
    end
  end

  def self.down
    remove_attachment :fichatecnicas, :muestra
  end
end

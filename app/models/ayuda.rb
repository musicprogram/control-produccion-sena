class Ayuda < ActiveRecord::Base
    has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/
end

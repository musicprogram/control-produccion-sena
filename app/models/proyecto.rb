class Proyecto < ActiveRecord::Base
    has_many :pturnos
    accepts_nested_attributes_for :pturnos, reject_if: :all_blank, allow_destroy: true
end

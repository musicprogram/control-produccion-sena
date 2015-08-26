class OperacionMaquina < ActiveRecord::Base
  belongs_to :operacion
  belongs_to :maquina
  belongs_to :tioperacion
  belongs_to :fichatecnica
  
  def self.search(search, page)
      where(['upper(tioperacion_id) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 10).order("num")
  end

end

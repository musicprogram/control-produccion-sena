class Balance < ActiveRecord::Base
  belongs_to :reference
  has_many :resultbalances
  
    validates :pedido_prendas, :jornada_laboral, presence: true
    validates :pedido_prendas, :jornada_laboral, numericality: true
    validate :ensure_ice_cream_is_not_melted, :on => :create
    
    before_create :calcular
    before_update :calcular
    after_create :balancear
    
    def calcular
       self.talk_time = self.jornada_laboral / self.pedido_prendas
       ficha_tecnica = Fichatecnica.find_by reference_id: self.reference_id
       operacion_maquinas = OperacionMaquina.where(fichatecnica_id: ficha_tecnica.id)
       self.tiempo_total = operacion_maquinas.sum(:sam).round(1)
    end
    
    def balancear
        ficha_tecnica = Fichatecnica.find_by reference_id: self.reference_id
        operacion_maquinas = OperacionMaquina.where(fichatecnica_id: ficha_tecnica.id).order(sam: :desc)
        #if operacion_maquinas.maximum(:sam) < self.talk_time
           
           oper = 1
           operacion_maquinas.each do |fT|
               acum = 0
               if !Resultbalance.exists?(:operacion => fT.operacion_id, :balance_id => self.id)
                   Resultbalance.create(balance_id: self.id, operario: oper, operacion: fT.operacion_id, maquina: fT.maquina_id, sam: fT.sam)
                   acum = fT.sam
                   maquinaTurno = fT.maquina_id
                   operacionTurno = fT.operacion_id

                   operacion_maquinas.each do |ft2|
                       
                       if (acum + ft2.sam)  <= self.talk_time && !Resultbalance.exists?(:operacion => ft2.operacion_id, :balance_id => self.id) && maquinaTurno == ft2.maquina_id
                           Resultbalance.create(balance_id: self.id, operario: oper, operacion: ft2.operacion_id, maquina: ft2.maquina_id, sam: ft2.sam)
                           acum = acum + ft2.sam
                           operacionTurno = ft2.operacion_id
                           maquinaTurno = ft2.maquina_id
                       end
                           
                   end
                   oper = oper + 1
               end
           end
        #end
    end
    
    private
    def ensure_ice_cream_is_not_melted
        ficha_tecnica = Fichatecnica.find_by reference_id: self.reference_id
        operacion_maquinas = OperacionMaquina.where(fichatecnica_id: ficha_tecnica.id)
        self.talk_time = self.jornada_laboral / self.pedido_prendas
        if operacion_maquinas.maximum(:sam) > self.talk_time
            errors.add(:talk_time, 'El maximo sam de la ficha tecnica es mayor que el talk time')
        end
    end
end
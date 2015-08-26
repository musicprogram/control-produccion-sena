class AddOperacionMaquinaIdToResultbalance < ActiveRecord::Migration
  def change
    add_reference :resultbalances, :operacion_maquina, index: true, foreign_key: true
  end
end

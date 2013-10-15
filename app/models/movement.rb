class Movement < ActiveRecord::Base
  belongs_to :proyect

  attr_accessible :ammount, :proyect_id, :rendido_beneficiario, :rendido_innova, :numero_informe, :fecha_informe, :aprobado_beneficiario, :aprobado_innova
end

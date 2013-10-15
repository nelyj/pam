class AddAttributesToMovements < ActiveRecord::Migration
  def change
    add_column :movements, :rendido_beneficiario, :integer
    add_column :movements, :rendido_innova, :integer
    add_column :movements, :numero_informe, :string
    add_column :movements, :fecha_informe, :string
    add_column :movements, :aprobado_beneficiario, :integer
    add_column :movements, :aprobado_innova, :integer
  end
end

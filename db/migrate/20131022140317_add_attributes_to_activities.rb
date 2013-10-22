class AddAttributesToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :date_activity, :string
    add_column :activities, :etapa_actual, :string
    add_column :activities, :need_comunications, :text
    add_column :activities, :experience, :text
    add_column :activities, :notes, :text
    add_column :activities, :nuevos_usuarios, :integer
    add_column :activities, :nuevos_clientes, :integer
    add_column :activities, :ventas_mensuales_actuales, :integer
    add_column :activities, :venden_en_mas_paises, :string
    add_column :activities, :nuevos_empleados_chilenos, :integer
    add_column :activities, :nuevos_empleados_extranjeros, :integer
    add_column :activities, :nuevos_outsourcing_chilenos, :integer
    add_column :activities, :nuevos_outsourcing_extranjeros, :integer
    add_column :activities, :fecha_proxima_reunion, :string
  end
end

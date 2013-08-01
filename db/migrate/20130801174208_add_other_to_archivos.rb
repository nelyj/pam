class AddOtherToArchivos < ActiveRecord::Migration
  def change
    add_attachment :archivos, :informe
  end
end

class AddAttachmentToArchivos < ActiveRecord::Migration
  def change
    add_attachment :archivos, :archivo
  end
end

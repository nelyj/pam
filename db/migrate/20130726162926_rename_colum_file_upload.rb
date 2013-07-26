class RenameColumFileUpload < ActiveRecord::Migration
  def up
  	rename_column :uploads, :file_file_name, :attached_file_name
    rename_column :uploads, :file_file_size, :attached_file_size
    rename_column :uploads, :file_content_type, :attached_content_type
    rename_column :uploads, :file_updated_at, :attached_updated_at  
  end

  def down
  end
end

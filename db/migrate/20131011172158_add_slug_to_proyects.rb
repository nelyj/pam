class AddSlugToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :slug, :string
  	add_index :proyects, :slug
  end
end

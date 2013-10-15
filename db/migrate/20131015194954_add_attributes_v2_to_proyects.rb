class AddAttributesV2ToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :finish, :string
    add_column :proyects, :ynrank, :integer
  end
end

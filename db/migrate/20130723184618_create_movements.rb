class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.float :ammount
      t.integer :proyect_id

      t.timestamps
    end
  end
end

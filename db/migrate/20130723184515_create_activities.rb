class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.integer :proyect_id

      t.timestamps
    end
  end
end

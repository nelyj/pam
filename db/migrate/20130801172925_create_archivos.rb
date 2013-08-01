class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.string :titulo

      t.timestamps
    end
  end
end

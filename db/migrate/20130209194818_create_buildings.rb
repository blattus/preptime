class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :code
      t.integer :distance_from_tab

      t.timestamps
    end
  end
end

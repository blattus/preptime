class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :code
      t.integer :distance_from_tab
      t.integer :tournament_id

      t.timestamps
    end
  end
end

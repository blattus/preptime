class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :size
      t.string :preferred_event
      t.boolean :is_accessible

      t.timestamps
    end
  end
end

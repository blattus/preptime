class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :location
      t.integer :number_of_prelims
      t.integer :number_of_elims

      t.timestamps
    end
  end
end

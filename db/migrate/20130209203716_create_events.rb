class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :division
      t.boolean :is_team
      t.string :type
      t.decimal :entry_fee
      t.integer :number_of_prelims
      t.integer :number_of_elims
      t.boolean :is_flighted
      t.integer :tournament_id

      t.timestamps
    end
  end
end

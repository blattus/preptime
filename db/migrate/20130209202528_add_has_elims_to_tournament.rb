class AddHasElimsToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :has_elims, :boolean
  end
end

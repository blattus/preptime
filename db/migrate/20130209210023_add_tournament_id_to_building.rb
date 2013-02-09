class AddTournamentIdToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :tournament_id, :integer
  end
end

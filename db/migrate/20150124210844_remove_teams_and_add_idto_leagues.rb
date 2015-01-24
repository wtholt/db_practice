class RemoveTeamsAndAddIdtoLeagues < ActiveRecord::Migration
  def change
    remove_column :leagues, :teams, :integer
    add_column :leagues, :league_id, :integer
  end
end

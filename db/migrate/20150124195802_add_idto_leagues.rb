class AddIdtoLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :league_id, :integer
  end
end

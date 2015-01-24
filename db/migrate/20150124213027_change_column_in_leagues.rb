class ChangeColumnInLeagues < ActiveRecord::Migration
  def change
    remove_column :leagues, :league_id, :integer
  end
end

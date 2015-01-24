class AddColumnsToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :name, :string
    add_column :players, :dob, :date
    add_column :players, :nationality, :string
    add_column :players, :position, :string
  end
end

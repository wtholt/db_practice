class AddColumnsToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :name, :string
    add_column :teams, :founded, :date
    add_column :teams, :ground, :string
    add_column :teams, :coach, :string
  end
end

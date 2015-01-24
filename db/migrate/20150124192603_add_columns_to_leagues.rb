class AddColumnsToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :name, :string
    add_column :leagues, :country, :string
    add_column :leagues, :founded, :date
    add_column :leagues, :teams, :integer
    add_column :leagues, :champion, :string
  end
end

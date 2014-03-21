class AddEnabledToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :enabled, :boolean, :default => true

  end
end

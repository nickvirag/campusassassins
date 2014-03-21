class AddEnabledToSeasons < ActiveRecord::Migration
  def change
    add_column :seasons, :enabled, :boolean, :default => true

  end
end

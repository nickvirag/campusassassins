class AddTargetsToSeasons < ActiveRecord::Migration
  def change
    add_column :seasons, :targets, :integer

  end
end

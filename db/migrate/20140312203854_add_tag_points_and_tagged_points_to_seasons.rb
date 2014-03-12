class AddTagPointsAndTaggedPointsToSeasons < ActiveRecord::Migration
  def change
    add_column :seasons, :tagpoints, :integer

    add_column :seasons, :tagged_points, :integer

  end
end

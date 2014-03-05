class AddDescriptionToSeasonsTable < ActiveRecord::Migration
  def change
    add_column :seasons, :description, :string

  end
end

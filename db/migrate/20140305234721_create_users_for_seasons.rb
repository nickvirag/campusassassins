class CreateUsersForSeasons < ActiveRecord::Migration
  def change
    create_table :usersforseasons do |t|
      t.integer :account
      t.integer :points
      t.text :currenttargets
      t.text :failedtargets
      t.text :succeededtargets
      t.integer :user_id
      t.integer :season_id

      t.timestamps
    end
  end
end

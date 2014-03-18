class CreatePlayers < ActiveRecord::Migration
  def up
    create_table :players do |t|
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

  def down
  end
end

class AddAboutAndWeaponToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about, :text

    add_column :users, :weapon, :text

  end
end

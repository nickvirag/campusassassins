class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :account
      t.integer :points
      t.text :currenttargets
      t.text :failedtargets
      t.text :succeededtargets

      t.timestamps
    end
  end
end

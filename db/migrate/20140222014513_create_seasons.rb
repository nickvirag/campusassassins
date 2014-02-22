class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.timestamp :start
      t.timestamp :end
      t.string :display

      t.timestamps
    end
  end
end

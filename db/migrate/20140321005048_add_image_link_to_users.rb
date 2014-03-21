class AddImageLinkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image_link, :string

  end
end

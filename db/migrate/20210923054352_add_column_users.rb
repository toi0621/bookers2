class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_image_id, :string, unique: true
    add_column :users, :introduction, :text
  end
end

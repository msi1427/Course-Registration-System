class ChangeColumnTypeInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :avatar, :image_url
  end
end

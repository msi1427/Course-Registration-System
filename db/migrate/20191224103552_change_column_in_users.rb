class ChangeColumnInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :std_id, :integer
  end
end

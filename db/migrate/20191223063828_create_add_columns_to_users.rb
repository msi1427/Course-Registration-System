class CreateAddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :users, :name, :text
    add_column :users, :std_id, :number
    add_column :users, :semester, :integer
  end
end

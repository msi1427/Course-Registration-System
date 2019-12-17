class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :head
      t.integer :student_no
      t.integer :teacher_no

      t.timestamps
    end
  end
end

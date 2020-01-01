class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :student_id
      t.string :name
      t.integer :semester
      t.string :course_code
      t.string :course_name
      t.string :grade
      t.decimal :point

      t.timestamps
    end
  end
end

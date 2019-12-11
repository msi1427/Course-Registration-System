class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :number
      t.string :department
      t.integer :semester
      t.decimal :credit

      t.timestamps
    end
  end
end

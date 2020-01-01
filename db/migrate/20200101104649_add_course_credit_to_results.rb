class AddCourseCreditToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :course_credit, :decimal
  end
end

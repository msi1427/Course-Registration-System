class CreateGradings < ActiveRecord::Migration[5.2]
  def change
    create_table :gradings do |t|
      t.string :grade
      t.decimal :point

      t.timestamps
    end
  end
end

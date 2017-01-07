class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :season
      t.text :description
      t.datetime :start_date

      t.timestamps
    end
  end
end

class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.references :course, foreign_key: true
      t.string :name
      t.text :plain
      t.text :hometask
      t.text :litterature

      t.timestamps null: false
    end
  end
end

class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.string :repo
      t.text :description
      t.text :tasks

      t.timestamps
    end
  end
end

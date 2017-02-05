class ChangeDataTypeForProject < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :repo, :text
  end
end

class RenameAttr < ActiveRecord::Migration[5.0]
  def change
    rename_column :favorite_projects, :follower_id, :project_id

  end
end

class RemoveColumnsFromRoles < ActiveRecord::Migration[5.1]
  def change
  	remove_column :roles, :user_id, :integer
  	remove_column :roles, :quest_id, :integer
  end
end

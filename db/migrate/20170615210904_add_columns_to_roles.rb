class AddColumnsToRoles < ActiveRecord::Migration[5.1]
  def change
    add_column :roles, :user_id, :integer
    add_column :roles, :quest_id, :integer
  end
end

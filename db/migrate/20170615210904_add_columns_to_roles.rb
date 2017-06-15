class AddColumnsToRoles < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :user_id, :integer
    add_column :quest, :quest_id, :integer
  end
end

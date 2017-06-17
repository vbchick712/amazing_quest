class CreateUserRoleQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :user_role_quests do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.references :quest, foreign_key: true

      t.timestamps
    end
  end
end

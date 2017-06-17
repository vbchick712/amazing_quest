class User < ApplicationRecord
	has_secure_password

	has_many :user_role_quests
	has_many :roles, through: :user_role_quest
	has_many :quests#, through: :user_role_quest

	has_many :user_tasks
	has_many :tasks, through: :user_task

end

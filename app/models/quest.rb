class Quest < ApplicationRecord
	has_many :tasks
	has_many :user_role_quests
	has_many :users, through: :user_role_quest
	belongs_to :user, through: :user_role_quest

end

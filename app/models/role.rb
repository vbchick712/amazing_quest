class Role < ApplicationRecord
	has_many :user_role_quests
	belongs_to :user, through: :user_role_quest
	belongs_to :quest, through: :user_role_quest
end

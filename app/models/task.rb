class Task < ApplicationRecord
	belongs_to :quests

	belongs_to :user_task
end

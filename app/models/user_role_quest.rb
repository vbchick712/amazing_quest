class UserRoleQuest < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :quest
end

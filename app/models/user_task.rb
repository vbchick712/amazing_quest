class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :quest
  belongs_to :task
end

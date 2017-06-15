class User < ApplicationRecord
	has_many :roles
	has_many :quests, :through => :roles
end

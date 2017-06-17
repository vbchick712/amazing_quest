class User < ApplicationRecord
	has_many :roles
	has_many :quests, :through => :roles
	has_secure_password
end

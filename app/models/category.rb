class Category < ActiveRecord::Base
	has_many :topics
	has_many :projects
end

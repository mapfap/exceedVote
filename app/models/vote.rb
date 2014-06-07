class Vote < ActiveRecord::Base
	validates_presence_of :student_id
	validates_uniqueness_of :student_id
end

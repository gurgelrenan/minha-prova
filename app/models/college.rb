class College < ActiveRecord::Base
	has_and_belongs_to_many :teachers
	has_many :courses
end

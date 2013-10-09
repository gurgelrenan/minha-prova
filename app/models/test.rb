class Test < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :discipline
	has_many :questions
end

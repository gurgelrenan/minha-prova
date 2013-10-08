class Course < ActiveRecord::Base
  belongs_to :college
  has_many :teachers
end

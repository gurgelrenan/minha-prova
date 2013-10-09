class Course < ActiveRecord::Base
  belongs_to :college
  has_many :teachers
  has_many :disciplines
  has_many :cores
end

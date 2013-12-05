# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  college_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Course < ActiveRecord::Base
  belongs_to :college
  has_many :teachers
  has_many :disciplines
end

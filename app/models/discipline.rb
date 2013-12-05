# == Schema Information
#
# Table name: disciplines
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  college_id  :integer
#  teacher_id  :integer
#  course_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Discipline < ActiveRecord::Base
  belongs_to :college
  belongs_to :teacher
  belongs_to :course
  has_many :tests
end

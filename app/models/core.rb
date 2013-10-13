# == Schema Information
#
# Table name: cores
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  course_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Core < ActiveRecord::Base
  belongs_to :course
  has_many :disciplines
  has_many :teachers
end

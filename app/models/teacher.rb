# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  course_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Teacher < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_and_belongs_to_many :colleges
  has_many :tests

  validates :name, :user_id, :course_id, presence: true
end

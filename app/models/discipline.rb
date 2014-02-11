# == Schema Information
#
# Table name: disciplines
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  course_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Discipline < ActiveRecord::Base
  belongs_to :course
  has_many :tests
  has_and_belongs_to_many :questions
  
  validates :name, presence: true
end

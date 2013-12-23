# == Schema Information
#
# Table name: tests
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  questions     :string(255)
#  teacher_id    :integer
#  discipline_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Test < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :discipline

  has_and_belongs_to_many :questions
end

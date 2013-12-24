# == Schema Information
#
# Table name: tests
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  teacher_id    :integer
#  discipline_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Test < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :discipline

  has_and_belongs_to_many :questions

  scope :for_user, -> (id) { where(teacher_id: id) }

  validates :name, :teacher_id, :discipline_id, presence: true
end

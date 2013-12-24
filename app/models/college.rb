# == Schema Information
#
# Table name: colleges
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class College < ActiveRecord::Base
	has_and_belongs_to_many :teachers
	has_many :courses

  validates :name, :city, :state, presence: true
end

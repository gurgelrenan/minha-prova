# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  description   :text
#  discipline_id :integer
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#  difficulty    :integer
#

class Question < ActiveRecord::Base
	seems_rateable :dimensions => [:difficulty]
  belongs_to :discipline
  belongs_to :user
end

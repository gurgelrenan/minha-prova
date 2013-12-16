# == Schema Information
#
# Table name: level_questions
#
#  id          :integer          not null, primary key
#  value       :integer
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class LevelQuestion < ActiveRecord::Base
  belongs_to :question, inverse_of: :level_questions
  belongs_to :user
end

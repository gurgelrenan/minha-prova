# == Schema Information
#
# Table name: question_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class QuestionType < ActiveRecord::Base
  validates :name, presence: true
end

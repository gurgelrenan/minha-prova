# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  description   :text
#  type          :string(255)
#  ranking       :integer
#  image         :string(255)
#  teacher_id    :integer
#  discipline_id :integer
#  test_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Question < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :discipline
  belongs_to :test
end

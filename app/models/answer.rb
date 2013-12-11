# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  question_id :integer
#  option_id   :integer
#  correct     :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :option

  validates :option_id, :question_id, presence: true

  before_create :characterize_answer

  def correct?
    self.correct || self.option.correct?
  end

  private

  def characterize_answer
    if option.correct?
      self.correct = true
    end
  end
end

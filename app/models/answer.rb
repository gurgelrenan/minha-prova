# == Schema Information
#
# Table name: answers
#
#  id            :integer          not null, primary key
#  question_id   :integer
#  option_id     :integer
#  correct       :boolean
#  created_at    :datetime
#  updated_at    :datetime
#  option_text   :text
#  option_number :integer
#

class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :option

  validates :option_id, :question_id, presence: true

  before_create :characterize_answer
  before_save :check_single_choice_with_field_case

  def value
    unless self.option == nil
      self.option.weight
    else
      Option.find(option_id).weight
    end
  end

  def correct?
    self.correct || self.option.correct?
  end

  private

  def characterize_answer
    if option.correct?
      self.correct = true
    end
  end

  def check_single_choice_with_field_case
    if [OptionsType.multi_choices, OptionsType.single_choice].include?(self.option.options_type_id)
      self.option_text = nil 
      self.option_number = nil
    end
  end
end

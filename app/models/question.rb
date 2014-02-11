# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  description      :text
#  user_id          :integer
#  created_at       :datetime
#  updated_at       :datetime
#  question_type_id :integer
#

class Question < ActiveRecord::Base

  belongs_to :user, inverse_of: :questions
  belongs_to :question_type
  

  has_many :options
  has_many :level_questions
  has_and_belongs_to_many :tests
  has_and_belongs_to_many :disciplines

  accepts_nested_attributes_for :options,
    :reject_if => ->(a) { a[:text].blank? },
      :allow_destroy => true

  accepts_nested_attributes_for :level_questions    

  validates :description, presence: true, allow_blank: false
  validates :user_id, presence: true

  def correct_options
    options.correct
  end

  def incorrect_options
    options.incorrect
  end

  def average
    self.level_questions.average('value').to_f
  end
end

# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  description      :text
#  discipline_id    :integer
#  user_id          :integer
#  created_at       :datetime
#  updated_at       :datetime
#  question_type_id :integer
#

class Question < ActiveRecord::Base

  belongs_to :discipline
  belongs_to :user
  belongs_to :question_type
  

  has_many :options
  has_many :level_questions

  accepts_nested_attributes_for :options,
    :reject_if => ->(a) { a[:text].blank? },
      :allow_destroy => true

  accepts_nested_attributes_for :level_questions    

  #attr_accessible :options_attributes, :description
  validates :description, presence: true, allow_blank: false

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

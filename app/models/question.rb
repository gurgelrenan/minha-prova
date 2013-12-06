# == Schema Information
#
# Table name: questions
#
#  id                :integer          not null, primary key
#  description       :text
#  discipline_id     :integer
#  user_id           :integer
#  created_at        :datetime
#  updated_at        :datetime
#  questions_type_id :integer
#

class Question < ActiveRecord::Base
	seems_rateable :allow_update=> true

  belongs_to :discipline
  belongs_to :user
  has_many :options

  accepts_nested_attributes_for :options,
    :reject_if => ->(a) { a[:options_type_id].blank? },
      :allow_destroy => true

  validates :description, presence: true, allow_blank: false
  validates :questions_type_id, presence: true
  validates_inclusion_of :questions_type_id, :in => QuestionsType.questions_type_ids, :unless => Proc.new{|q| q.questions_type_id.blank?}

  def correct_options
    options.correct
  end

  def incorrect_options
    options.incorrect
  end



end

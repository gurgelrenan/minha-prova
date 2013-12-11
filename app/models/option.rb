# == Schema Information
#
# Table name: options
#
#  id          :integer          not null, primary key
#  question_id :integer
#  text        :string(255)
#  correct     :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Option < ActiveRecord::Base
  belongs_to :question

  scope :correct, -> {where(:correct => true) }
  scope :incorrect, -> {where(:correct => false) }

  def to_s
    self.text
  end

  def correct?
    self.correct == true
  end
end

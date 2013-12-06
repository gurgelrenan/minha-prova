# == Schema Information
#
# Table name: options
#
#  id              :integer          not null, primary key
#  question_id     :integer
#  weight          :integer          default(0)
#  text            :string(255)
#  correct         :boolean
#  created_at      :datetime
#  updated_at      :datetime
#  options_type_id :integer
#

class Option < ActiveRecord::Base
  belongs_to :question

  validates :text, :presence => true, :allow_blank => false, :if => Proc.new{|o| [OptionsType.multi_choices, OptionsType.single_choice, OptionsType.single_choice_with_text, OptionsType.single_choice_with_number, OptionsType.multi_choices_with_text, OptionsType.multi_choices_with_number, OptionsType.large_text].include?(o.options_type_id) }
  validates :options_type_id, :presence => true
  validates_inclusion_of :options_type_id, :in => OptionsType.options_type_ids, :unless => Proc.new{|o| o.options_type_id.blank?}

  scope :correct, -> {where(:correct => true) }
  scope :incorrect, -> {where(:correct => false) }

  before_create :default_option_weigth

  def to_s
    self.text
  end

  def correct?
    self.correct == true
  end

  private
  
  def default_option_weigth
    if self.correct and self.weight == 0
      self.weight =  1
    end
  end
end

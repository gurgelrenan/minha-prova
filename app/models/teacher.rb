class Teacher < ActiveRecord::Base
  belongs_to :user
  belongs_to :core
  belongs_to :course
  has_and_belongs_to_many :colleges
  has_many :disciplines
  has_many :questions
  has_many :tests
end

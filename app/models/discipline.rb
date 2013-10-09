class Discipline < ActiveRecord::Base
  belongs_to :college
  belongs_to :teacher
  belongs_to :core
  belongs_to :course
end

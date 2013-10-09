class Core < ActiveRecord::Base
  belongs_to :course
  has_many :disciplines
  has_many :teachers
end

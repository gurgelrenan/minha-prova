class Question < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :discipline
  belongs_to :test
end

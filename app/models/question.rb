class Question < ActiveRecord::Base
  belongs_to :discipline
  belongs_to :user
end

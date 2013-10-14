# == Schema Information
#
# Table name: questions
#
#  id                 :integer          not null, primary key
#  description        :text
#  type               :string(255)
#  ranking            :integer
#  teacher_id         :integer
#  discipline_id      :integer
#  test_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Question < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :discipline
  belongs_to :test

  validates_presence_of :description

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/image.png"
end

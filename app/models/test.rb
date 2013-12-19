# == Schema Information
#
# Table name: tests
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  questions     :string(255)
#  teacher_id    :integer
#  discipline_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Test < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :discipline

  def pdf()
    Prawn::Document.new do |pdf|
      pdf.fill_color "40464e"
      pdf.text "Prova", :size => 40, :style => :bold, :align => :center
    end
  end

  def save(path='/tmp/#{self.name}.pdf')
    pdf.render_file(path)
  end

end

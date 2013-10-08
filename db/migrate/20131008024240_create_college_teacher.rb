class CreateCollegeTeacher < ActiveRecord::Migration
  def change
    create_table :colleges_teachers do |t|
    	t.belongs_to :college
    	t.belongs_to :teacher
    end
  end
end

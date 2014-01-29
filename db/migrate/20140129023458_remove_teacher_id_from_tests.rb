class RemoveTeacherIdFromTests < ActiveRecord::Migration
  def change
    remove_column :tests, :teacher_id, :integer
  end
end

class RemoveDisciplineIdFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :discipline_id, :integer
  end
end

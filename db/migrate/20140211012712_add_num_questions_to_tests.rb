class AddNumQuestionsToTests < ActiveRecord::Migration
  def change
    add_column :tests, :num_questions, :integer
  end
end

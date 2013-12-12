class RemoveQuestionsTypeFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :questions_type, :string
  end
end

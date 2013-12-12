class AddQuestionTypeToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :question_type, index: true
  end
end

class CreateLevelQuestions < ActiveRecord::Migration
  def change
    create_table :level_questions do |t|
      t.integer :value
      t.references :question, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

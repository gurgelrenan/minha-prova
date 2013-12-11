class RemoveOptionTextFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :option_text
    remove_column :answers, :option_number 
  end
end

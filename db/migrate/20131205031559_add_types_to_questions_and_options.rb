class AddTypesToQuestionsAndOptions < ActiveRecord::Migration
  def change
    #Questions table
    add_column :questions, :questions_type_id, :integer
    
    #Options table
    add_column :options, :options_type_id, :integer
    
    #Answers table
    add_column :answers, :option_text, :text
    add_column :answers, :option_number, :integer	
  end
end

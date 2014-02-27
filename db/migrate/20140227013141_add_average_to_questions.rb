class AddAverageToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :average, :float
  end
end

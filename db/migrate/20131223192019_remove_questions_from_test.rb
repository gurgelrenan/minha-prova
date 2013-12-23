class RemoveQuestionsFromTest < ActiveRecord::Migration
  def change
    remove_column :tests, :questions, :string
  end
end

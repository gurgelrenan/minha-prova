class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true
      t.references :option, index: true
      t.boolean :correct

      t.timestamps
    end
  end
end

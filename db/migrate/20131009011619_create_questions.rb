class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.string :type
      t.integer :ranking
      t.string :image
      t.references :teacher, index: true
      t.references :discipline, index: true

      t.timestamps
    end
  end
end
